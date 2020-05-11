sfdx force:org:create -f config/project-scratch-def.json -d 1 -s
sfdx force:source:push
sfdx force:user:permset:assign -n demoPerms
sfdx automig:load -d data
sfdx shane:data:favorite --object Account --where "Name = 'That Account We\'ve Been Working On Forever'"
sfdx force:org:open -p /lightning/o/Account/list?filterName=Recent