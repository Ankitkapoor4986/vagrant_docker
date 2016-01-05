echo "Preparing database"
sleep 100
exit | sqlplus -s system/oracle@localhost @/data/scripts/oracle.sql
echo "Database preparation complete"

