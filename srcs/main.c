/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aal-mokd <aal-mokd@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/20 16:49:28 by aal-mokd          #+#    #+#             */
/*   Updated: 2024/09/20 16:49:36 by aal-mokd         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./../header/minishell.h"

// void	realese_inputs()
// {

// }

int main()
{
	char *input;

	while ((input = readline("MINISHELL>>: ")) != NULL)
	{
		if (strlen(input) > 0)
		{
			add_history(input);
		}
		printf("You entered: %s\n", input);
		free(input);
	}

	return 0;
}
