#!/bin/bash


curl -s "https://monitoringapi.solaredge.com/site/1853858/energy?timeUnit=DAY&endDate=`date --date=yesterday +%Y-%m-%d`&startDate=2020-10-01&api_key=JE4E4104VSINFXNS6PU8HMS84P380DBC" | python3 -m json.tool
curl -s "https://monitoringapi.solaredge.com/site/1853858/energy?timeUnit=DAY&endDate=`date --date=yesterday +%Y-%m-%d`&startDate=2020-10-01&api_key=JE4E4104VSINFXNS6PU8HMS84P380DBC" | python3 -m json.tool | jq '.energy.values'
curl -s "https://monitoringapi.solaredge.com/site/1853858/energy?timeUnit=DAY&endDate=`date --date=yesterday +%Y-%m-%d`&startDate=2020-10-01&api_key=JE4E4104VSINFXNS6PU8HMS84P380DBC" | python3 -m json.tool | jq '.energy.values[]'
curl -s "https://monitoringapi.solaredge.com/site/1853858/energy?timeUnit=DAY&endDate=`date --date=yesterday +%Y-%m-%d`&startDate=2020-10-01&api_key=JE4E4104VSINFXNS6PU8HMS84P380DBC" | python3 -m json.tool | jq '.energy.values .values[]'
curl -s "https://monitoringapi.solaredge.com/site/1853858/energy?timeUnit=DAY&endDate=`date --date=yesterday +%Y-%m-%d`&startDate=2020-10-01&api_key=JE4E4104VSINFXNS6PU8HMS84P380DBC" | python3 -m json.tool | jq '.energy.values .values[0]'
curl -s "https://monitoringapi.solaredge.com/site/1853858/energy?timeUnit=DAY&endDate=`date --date=yesterday +%Y-%m-%d`&startDate=2020-10-01&api_key=JE4E4104VSINFXNS6PU8HMS84P380DBC" | python3 -m json.tool | jq '.energy.values .values[57]'
curl -s "https://monitoringapi.solaredge.com/site/1853858/energy?timeUnit=DAY&endDate=`date --date=yesterday +%Y-%m-%d`&startDate=2020-10-01&api_key=JE4E4104VSINFXNS6PU8HMS84P380DBC" | python3 -m json.tool | jq '.energy.values .values[97]'
curl -s "https://monitoringapi.solaredge.com/site/1853858/energy?timeUnit=DAY&endDate=`date --date=yesterday +%Y-%m-%d`&startDate=2020-10-01&api_key=JE4E4104VSINFXNS6PU8HMS84P380DBC" | python3 -m json.tool | jq '.energy.values .value[97]'
date --date=yesterday +%Y-%m-%d),$(curl -s "https://monitoringapi.solaredge.com/site/1853858/energy?timeUnit=DAY&endDate=`date --date=yesterday +%Y-%m-%d`&startDate=2020-10-01&api_key=JE4E4104VSINFXNS6PU8HMS84P380DBC" | python3 -m json.tool
echo $(date --date=yesterday +%Y-%m-%d),$(curl -s "https://monitoringapi.solaredge.com/site/1853858/energy?timeUnit=DAY&endDate=`date --date=yesterday +%Y-%m-%d`&startDate=2020-10-01&api_key=JE4E4104VSINFXNS6PU8HMS84P380DBC" | python3 -m json.tool | jq '.energy.values[0] .value')
echo $(date --date=yesterday +%Y-%m-%d),$(curl -s "https://monitoringapi.solaredge.com/site/1853858/energy?timeUnit=DAY&endDate=`date --date=yesterday +%Y-%m-%d`&startDate=`date --date=yesterday +%Y-%m-%d`&api_key=JE4E4104VSINFXNS6PU8HMS84P380DBC" | python3 -m json.tool | jq '.energy.values[0] .value')


curl -s "https://monitoringapi.solaredge.com/site/1853858/energy?timeUnit=DAY&endDate=`date --date=yesterday +%Y-%m-%d`&startDate=2020-10-01&api_key=JE4E4104VSINFXNS6PU8HMS84P380DBC" | python3 -m json.tool | jq '.energy.values[] | [.date, .value] | @csv' 


curl -s "https://monitoringapi.solaredge.com/site/1853858/energy?timeUnit=DAY&endDate=`date --date=yesterday +%Y-%m-%d`&startDate=2020-10-01&api_key=JE4E4104VSINFXNS6PU8HMS84P380DBC" | python3 -m json.tool | jq '.energy.values[] | [.date, .value] | @csv' | sed -e 's/\"//g ; s/\\//g' | cut -f1 -d"," | cut -f1 -d" "

