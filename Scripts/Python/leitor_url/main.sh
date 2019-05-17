#!/usr/bin/env bash
#
#########################
# data criacao = 22/04/19
# ultima modif = 13/05/19
# versao       = 0.24
#########################
#
## chamando arquivo externo de variaveis
source variables.conf

## importando arquivos 
check_wordpress_news()
{
    source wordpress_news.sh
    cat $saida_wordpress_news >> $merge_posts
}

check_wordpress_podcast()
{
    source wordpress_podcast.sh
    cat $saida_wordpress_podcast >> $merge_posts
}

check_rss()
{
    source rss.sh
    cat $saida_rss >> $merge_posts   
}

check_nasa()
{
	source nasa.sh
    cat $saida_nasa >> $merge_posts  
}

check_hubble()
{
    source hubble.sh
    cat $saida_hubble >> $merge_posts 
}

check_apollo()
{
    source apollo_archive.sh
    cat $saida_apollo >> $merge_posts
}

## chamando arquivos externos
check()
{
    # check_wordpress_news
    # check_wordpress_podcast
    check_rss
    check_nasa
    check_hubble
    check_apollo
}

# agrupando arquivos | NAO MODIFICAR
merge_files()
{
    ## limpando arquivo
    echo "" > $merge_posts

    ## juntando arquivos
    check
}

## misturando linhas | NAO MODIFICAR
sort_posts()
{
    sort -R $merge_posts > $posts_twitter
}

## chamando funcao principal | NAO MODIFICAR
main()
{
    merge_files    
    sort_posts
}

main