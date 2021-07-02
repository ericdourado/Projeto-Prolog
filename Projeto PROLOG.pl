%Filmes
filme(homem_de_ferro_3, mcu_fase_2).
filme(thor_2, mcu_fase_2).
filme(capitao_america_2, mcu_fase_2).
filme(guardioes_da_galaxia, mcu_fase_2).
filme(vingadores_2, mcu_fase_2).
filme(homem_formiga, mcu_fase_2).
filme(capitão_amarica_3, mcu_fase_3).

personagem(homem_de_ferro).
personagem(patriota_de_ferro).
personagem(hulk).
personagem(thor).
personagem(odin).
personagem(heimdall).
personagem(capitao_america).
personagem(viuva_negra).
personagem(falcao).
personagem(senhor_das_estrelas).
personagem(drax).
personagem(gamora).
personagem(groot).
personagem(rocky).
personagem(gaviao_arqueiro).
personagem(feiticeira_escarlate).
personagem(mercurio).
personagem(visao).
personagem(maquina_de_combate).
personagem(nicky_fury).
personagem(homem_formiga).
personagem(homem_formiga_original).
personagem(vespa).
personagem(volstagg).
personagem(fandral).
personagem(soldado_invernal).

%herois do filme homem de ferro
heroi(homem_de_ferro,homem_de_ferro_3).
heroi(patriota_de_ferro,homem_de_ferro_3).


%herois do thor 2
%
heroi(thor,thor_2).
heroi(odin,thor_2).
heroi(heimdall,thor_2).
heroi(volstagg, thor_2).
heroi(fandral, thor_2).

%herois do capitao america
%
heroi(capitao_america,capitao_america_2).
heroi(viuva_negra,capitao_america_2).
heroi(falcao,capitao_america_2).
heroi(soldado_invernal, capitao_america_2).

%herois do guardioes da galaxia
%
heroi(senhor_das_estrelas,guardioes_da_galaxia).
heroi(gamora,guardioes_da_galaxia).
heroi(drax,guardioes_da_galaxia).
heroi(rocky,guardioes_da_galaxia).
heroi(groot,guardioes_da_galaxia).

%herois dos vingadores 2

heroi(homem_de_ferro,vingadores_2).
heroi(thor,vingadores_2).
heroi(hulk,vingadores_2).
heroi(capitao_america,vingadores_2).
heroi(viuva_negra,vingadores_2).
heroi(gaviao_arqueiro,vingadores_2).
heroi(feiticeira_escarlate,vingadores_2).
heroi(mercurio,vingadores_2).
heroi(visao,vingadores_2).
heroi(maquina_de_combate,vingadores_2).
heroi(nick_fury,vingadores_2).
heroi(falcao,vingadores_2).

%herois do homem formiga

heroi(homem_formiga,homem_formiga).
heroi(homem_formiga_original,homem_formiga).
heroi(vespa,homem_formiga).
heroi(falcao,homem_formiga).

%tipos de poderes
%
poder(homem_de_ferro,tecnologico).
poder(patriota_de_ferro,tecnologico).
poder(hulk,fisico).
poder(hulk,tecnologico).

poder(thor,fisico).
poder(thor,magico).
poder(thor,tecnologico).
poder(odin,magico).
poder(odin,fisico).
poder(heimdall,tecnologico).
poder(heimdall,magico).
poder(volstagg,fisico).
poder(volstagg,magico).
poder(fandral,fisico).
poder(fandral,magico).

poder(viuva_negra,tecnologico).
poder(viuva_negra,fisico).
poder(capitao_america,fisico).
poder(falcao,tecnologico).
poder(falcao,fisico).
poder(soldado_invernal,tecnologico).
poder(soldado_invernal,fisico).

poder(senhor_das_estrelas,tecnologico).
poder(gamora,tecnologico).
poder(drax,tecnologico).
poder(rocky,tecnologico).
poder(groot,tecnologico).
poder(groot,magico).

poder(gaviao_arqueiro,tecnologico).
poder(feiticeira_escarlate,magico).
poder(mercurio,fisico).
poder(mercurio,magico).
poder(visao,tecnologico).
poder(visao,magico).
poder(maquina_de_combate,tecnologico).
poder(nick_fury,tecnologico).
poder(homem_formiga,tecnologico).
poder(homem_formiga_original,tecnologico).
poder(vespa,homem_original).


%personagens masculinos
%personagens femininos
masculino(homem_de_ferro).
masculino(patriota_de_ferro).
masculino(hulk).
masculino(thor).
masculino(odin).
masculino(heimdall).
masculino(capitao_america).
masculino(falcao).
masculino(senhor_das_estrelas).
masculino(drax).
masculino(rocky).
masculino(groot).
masculino(visao).
masculino(maquina_de_combate).
masculino(nick_fury).
masculino(gaviao_arqueiro).
masculino(mercurio).
masculino(homem_formiga).
masculino(homem_formiga_original).
masculino(volstalgg).
masculino(fandral).
masculino(soldado_invernal).

feminino(viuva_negra).
feminino(gamora).
feminino(feiticeira_escarlate).
feminino(vespa).


% Criação de Novos Predicados%


% 1) HEROIS NA BATALHA DE SOKOVIA EM VINGADORES 2
batalha(X,sokovia):- heroi(X,vingadores_2).
% 2) HEROIS NA BATALHA NO PETROLEIRO EM HOMEM DE FERRO 3
batalha(X,petroleiro):-heroi(X,homem_de_ferro_3).
% 3) HEROI NA BATALHA DE VANAHEIN
batalha(X,vanaheim):-poder(X,magico),poder(X,fisico),poder(X,tecnologico),heroi(X,thor_2), masculino(X).
% 4) HEROINAS NA BATALHA DE SOKOVIA
heroina(X):- batalha(X,sokovia),feminino(X).
% 5) POSSÍVEL CASAL ENTRE HEROI ESTEVE EM SOKOVIA E NO PETROLEIRO E HEROINA DO MCU QUE ESTEVE EM SOKOVIA
heroi_casal(X,Y) :- batalha(X, petroleiro), batalha(X, sokovia), personagem(X), heroina(Y).
% 6) COMBINAÇÃO DE GRUPOS DE TRIO DE HEROI TECNOLOGICO DE GUARDIÕES DA GALÁXIA, HEROI MÁGICO DE THOR 2 E 
% HEROI QUE ESTEVE EM SOKOVIA
trio(X, Y,Z) :- poder(X,tecnologico),heroi(X,guardioes_da_galaxia), poder(Y, magico), heroi(Y, thor_2),batalha(Z,sokovia).
% 7) HEROIS MASCULINOS NO MCU FASE 2
heroi_filme(X):- heroi(X,homem_de_ferro_3),not(feminino(X)).
% 8) HEROIS FEMININOS QUE ESTIVERAM NO MCU FASE 2
mcu_filmes_2(X):- feminino(X),filme(X, mcu_fase_2).
% 9) POSSÍVEL COMBINAÇÕES DE HEROINAS TECNOLOGICAS, HEROIS MASCULINOS MAGICOS,HEROINAS MAGICAS E HEROI FÍSICO(INCLUINDO DUPLICATA)
quarteto(W, X, Y, Z):- poder(W, tecnologico), feminino(W), poder(X,magico), masculino(X), poder(Y, magico), feminino(Y), poder(Z, fisico).
%10) PODER MAGICO, FEMININA, E ESTEVE EM SOKOVIA, QUEM SERÁ?
magic(X) :- feminino(X),batalha(X, sokovia), poder(X, magico).