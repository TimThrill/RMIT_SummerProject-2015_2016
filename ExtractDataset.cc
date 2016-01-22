/*
 * ExtractDataset.cpp
 *
 *  Created on: 23 Dec 2015
 *      Author: admin
 */
#include <fstream>
#include <iostream>

#include "ExtractDataset.h"
#include "json/json.h"

ExtractDataset::ExtractDataset(std::string path) {
    readDataset(path);
}

int ExtractDataset::readDataset(std::string path) {
    Json::Value root;
    Json::Reader reader;
    // Read json file
    std::ifstream readJsonFile(path, std::ifstream::binary);
    std::string cur_line;
    bool success;

    do {
        std::getline(readJsonFile, cur_line);
        success = reader.parse(cur_line, root, false);

        if(success) {
            std::map<std::string, std::string> attributes;
            unsigned int cnt = 0;
            if(root["attributes"].getMemberNames().size() > 0) {
                while(cnt < root["attributes"].getMemberNames().size()) {
                    std::string key = root["attributes"].getMemberNames().at(cnt);
                    attributes.insert(std::pair<std::string, std::string>(key, root["attributes"][key].asString()));
                    cnt++;
                }
            }

            // Extract categories of business into memory
            std::vector<std::string> categories;
            Json::Value::iterator it2 =  root["categories"].begin();
            while(it2 != root["categories"].end()) {
                categories.push_back((*it2).asString());
                it2++;
            }

            Business business(root["business_id"].asString(),
                            root["business_name"].asString(),
                            attributes,
                            categories,
                            root["user_id"].asInt(),
                            root["longitude"].asDouble(),
                            root["latitude"].asDouble(),
                            root["address"].asString(),
                            root["text_review"].asString(),
                            root["rate"].asDouble());
            int key = root["user_id"].asInt();
            // Put the parsed json data into business list
            businessList.insert(std::pair<int, Business>(key, business));
        }
    } while (success);
    return 0;
}
