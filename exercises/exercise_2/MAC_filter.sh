#!/bin/bash
#Takes in the MAC address to filter by and the pcap file to search in. outputs the results to  MAC_filter_results.txt
tshark -r "$1" -Y "eth.src=="$2"" -T fields -e eth >/vagrant/MAC_filter_results.txt
