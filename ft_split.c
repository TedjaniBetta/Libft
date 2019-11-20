/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tebetta <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/20 19:09:10 by tebetta           #+#    #+#             */
/*   Updated: 2019/11/18 16:25:23 by tebetta          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>

static int ft_countwords(char const *s, char c)
{
    int letter;
    int words;

    letter = 0;
    words = 0;
    while (s[letter])
    {
        if (s[letter] != c)
            words++;
        else if (s[letter] != c && s[letter - 1] == c)
            words++;
        letter++;
    }
    return (words);
}

static char    *ft_strcsub(char *s, char c)
{
    size_t      i;
    char        *tmp;

    i = 0;
    while (s[i] && s[i] != c)
        i++;
    if (!(tmp = (char *)malloc(sizeof(*tmp) * (i + 1))))
        return (NULL);
    ft_strncpy(tmp, s, i);
    return (tmp);
}

char    **ft_split(char const *s, char c)
{
    char    **tab;
    int     itab;
    int     istr;
    int     i;

    i = 0;
    istr = 0;
    itab = 0;
    if (!(tab = (char**)malloc(sizeof(char *) * (ft_countwords(s, c) + 1))))
        return (NULL);
    while (s[istr])
    {
        while (s[istr] && s[istr] == c)
            istr++;
        tab[itab++] = ft_strcsub((char *)s + istr, c);
        while (s[istr] && s[istr] != c)
            istr++;
    }
    i = 0;
    tab[itab] = 0;
    while (tab[i])
    {
        i++;
    }
    return (tab);
}
int main()
{
    char **tmp;
    int i = 0;
    tmp = ft_split("Bonjour cavatoi", ' ');
    while (tmp[i])
    {
        printf("%s\n", tmp[i]);
        i++;
    }
    return (0);
}
