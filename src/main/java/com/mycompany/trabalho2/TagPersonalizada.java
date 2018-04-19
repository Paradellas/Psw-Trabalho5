package com.mycompany.trabalho2;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author User
 */

/**Classe responsável por executar o campo de seleçao do html */
public class TagPersonalizada extends SimpleTagSupport {

        private String perfilSelecionado;
 /** Metodo responsável por printar o codigo html de seleção */
    public void doTag() throws JspException, IOException{
        
        String selectHtml = 
                            "<select name=\"disciplina\" class=\"custom-select mr-md-5 \" id=\"inlineFormCustomSelect\">" +
                            "    <option value=''></option>" +
                            "    <option value='Programação de Software Web' " + ("Programação de Software Web".equals(perfilSelecionado) ? "selected": "") +  " >Programação de Software Web</option>" +
                            "    <option value='Análise e Projeto de Sistemas' " + ("Análise e Projeto de Sistemas".equals(perfilSelecionado)  ? "selected": "") + " >Análise e Projeto de Sistemas</option>" +
                            "    <option value='Organização e Estrutura de Arquivos' " + ("Organização e Estrutura de Arquivos".equals(perfilSelecionado) ? "selected": "") +  " >Organização e Estrutura de Arquivos</option>" +
                            "</select>";
        getJspContext().getOut().print(selectHtml);
    }       

    public String getPerfilSelecionado() {
        return perfilSelecionado;
    }

    public void setPerfilSelecionado(String perfilSelecionado) {
        this.perfilSelecionado = perfilSelecionado;
    }
}