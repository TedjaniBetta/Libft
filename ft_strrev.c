/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrev.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tebetta <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/29 14:08:52 by tebetta           #+#    #+#             */
/*   Updated: 2019/10/31 14:30:38 by tebetta          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char		*ft_strrev(char *str)
{
	int		i;
	int		len;
	char	swap;

	i = 0;
	len = ft_strlen(str);
	while (str[i] != '\0' && i < (len / 2))
	{
		swap = str[i];
		str[i] = str[len - 1 - i];
		str[len - 1 - i++] = swap;
	}
	return (str);
}
