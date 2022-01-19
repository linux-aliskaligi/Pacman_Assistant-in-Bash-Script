#!/bin/bash

gri=$'\e[1;30m';
kirmizi=$'\e[1;31m';
mavi=$'\e[1;34m';
turkuaz=$'\e[1;36m';
sifirla=$'\e[0m';
kalin=$'\e[1m';

clear

if [[ "$(whoami)" != root ]]; then
	echo "${kirmizi}Ilk once Root olmanız gerekmekte.."
	exit 0
fi

for (( ; ; ))
do
update="sudo pacman -Syyu"
sync="sudo pacman -Sy"
delete="sudo pacman -Sc"
install=
search=
uninstall=
app_install=

echo -e 'Paketleri yukseltmek icin "u/U/update/Update/UPDATE" yazin'
echo -e 'Depoyu senkronize etmek icin "s/S/sync/Sync/SYNC" yazin'
echo -e 'Atıkları vs. temizlemek icin "d/D/delete/Delete/DELETE" yazin \n'

#read -p 'Paket kurmak için paket ismini girin: '
#sudo pacman -S $install

#read -p 'Paket aratmak icin paket ismini girin: '
#sudo pacman -Ss $search

#read -p 'Paket kaldırmak icin paket ismini girin: '
#sudo pacman -Rns $uninstall

#read -p 'Zaten kurulu paketi aratmak icin paket ismini girin: '
#sudo pacman -Qs $app_install

read -p "Yapılacak islemi secin: " result
case $result in
   u|U|Update|update|UPDATE)
      $update
   ;;
   s|S|Sync|sync|SYNC)
      $sync
   ;;
  d|D|Delete|delete|DELETE)
      $delete
   ;;
esac

clear

done