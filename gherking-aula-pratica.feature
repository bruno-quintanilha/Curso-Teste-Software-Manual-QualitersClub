Feature: Emissão de Certificado

    Eu como aluno da plataforma
    Gostaria de ao completar o curso seja emitido certificado
    Porque, assim consigo comprovar o meu conhecimento técnico


Background: Estar matriculado no curso Gherking do básico ao Avançado
Given que estou logado na plataforma
And possuo matricula ativa


Scenario Outline: Emissão de Certificado
And matriculado no curso <nomeCurso>
When finalizo o meu curso
Then tenho o meu certificado emitido

Examples:
    | nomeCurso | 
    | "Gherking do básico ao Avançado"  | 
    | "7 principios do Teste de Software"  | 
    | "Operadores Lógicos"  | 

Scenario: Curso em andamento
When assisto as aulas
Then não tenho o meu certificado disponível
But possuo aulas assistidas


