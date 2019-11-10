/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tebetta <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/24 20:10:24 by tebetta           #+#    #+#             */
/*   Updated: 2019/10/31 14:20:05 by tebetta          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static char				*get_str(long n, int size)
{
	char		*str;
	int			mod;

	if (!(str = (char *)malloc(sizeof(char) * (size + 1))))
		return (NULL);
	if (n < 0)
	{
		str[0] = '-';
		n = -n;
	}
	str[size--] = '\0';
	while (n >= 10)
	{
		mod = n % 10;
		n = n / 10;
		str[size--] = mod + '0';
	}
	str[size] = n + '0';
	return (str);
}

static unsigned int		get_size_n(long n)
{
	unsigned int		size;

	size = 0;
	if (n < 0)
	{
		size = 1;
		n = -n;
	}
	while (n >= 10)
	{
		n = n / 10;
		size++;
	}
	return (size + 1);
}

char					*ft_itoa(int n)
{
	int		size;
	long	nb;
	char	*str;

	nb = n;
	size = get_size_n(nb);
	if (!(str = get_str(nb, size)))
		return (NULL);
	return (str);
}
