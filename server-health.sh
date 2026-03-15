#!/bin/bash


echo "==============================================="
echo"      Server Health Monitoring"
echo"================================================"
echo""


echo "CPU Usage :"
top -bn | grep "CPU(s)"
echo ""


echo "Memory Usage :"
free -h
echo ""

echo "Disk Usage:"
df -h 
echo ""

echo " Top 5 Processes by Memory Usage :"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
echo ""

echo "Ssystem Uptime"
uptime
echo ""

