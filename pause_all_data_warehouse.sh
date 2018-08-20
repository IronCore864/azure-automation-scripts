IFS=$'\n'

for line in $(az resource list --resource-type Microsoft.Sql/servers/databases --query "[?kind != '' && contains(kind, 'datawarehouse')].[name,resourceGroup]" -o tsv);
do 
    sn=`echo $line | awk '{print $1}'`
    rg=`echo $line | awk '{print $2}'`
    server=`echo $sn| awk -F '/' '{print $1}'`
    name=`echo $sn | awk -F '/' '{print $2}'`
    az sql dw pause --name $name --resource-group $rg --server $server
done
