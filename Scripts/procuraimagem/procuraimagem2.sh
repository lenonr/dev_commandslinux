#FUNCIONANDO
################################################################################
    #limpando a tela
    #clear

    #capturando caminho da imagem
#   xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace1/last-image > .caminho.txt

    #extraindo caminho base
#   cat .caminho.txt | sed -e "s;/home/lenonr/MEGA/Imagens/Pictures/;;g" >  .base.txt 

    #extraindo imagem
    #cat .base.txt | sed -e "s;.jpg;;g" > .numero.txt 
    #url=`cat .numero.txt` 

    #echo $url
    #echo "ABRINDO IMAGEM NO WALLHAVEN"
    #firefox https://alpha.wallhaven.cc/wallpaper/$url
################################################################################

#LIXO
################################################################################
#limpando a tela
clear

#criando arquivos
#touch .original.txt .removecaminho.txt .removewallhaven.txt .removeimagem.txt

#touch .area2.txt .base2.txt 

#capturando caminho da imagem
#xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace1/last-image > .area1.txt

#xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace2/last-image > .area2.txt

#descobrindo imagem original
#url=`cat .numero.txt` 

# 
# removejpg=`$caminho`
# # | sed -e "s;/*.jpg;;g"
# echo $removejpg


#xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace1/last-image > .original.txt

#extraindo caminho base
#cat .original.txt | sed -e "s;/home/lenonr/MEGA/Imagens/Papeis de Parede/;;g" > .removecaminho.txt 

#extraindo wallhaven
#cat .removecaminho.txt | sed -e "s;wallhaven-*;;g" > .removewallhaven.txt 

#extraindo imagem
#cat .removewallhaven.txt | sed -e "s;/*.jpg;;g" > .removeimagem.txt 

#cat .removeimagem.txt

#cat .base1.txt | sed -e "s;/wallhaven-;;g" > .base1.txt 

#cat .base1.txt | sed -e "s;'*'/;;g" > .base1.txt

#cat .base1.txt

#removendo arquivos
#rm -r .original.txt .removecaminho.txt .removewallhaven.txt .removeimagem.txt

################################################################################

#REALIZANDO LEITURA ATRAVES DE VARIAVEIS
################################################################################
#limpando a tela
clear

#capturando caminho completo imagem
caminho=`xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace1/last-image`

#removendo raiz
echo $caminho | sed -e "s;/home/lenonr/MEGA/Imagens/Pictures;;g"