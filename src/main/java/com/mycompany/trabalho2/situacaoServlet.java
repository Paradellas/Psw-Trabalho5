package com.mycompany.trabalho2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author Paradellas
 */
@WebServlet("/situacaoServlet")
public class situacaoServlet extends HttpServlet {
    /**Lista que guarda todos os objetos aluno */
    List<Aluno> lista1= new ArrayList();
    List<Aluno> lista2= new ArrayList();
    List<Aluno> lista3= new ArrayList();
    /**Variável para receber um aluno */
    Aluno b;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        
        /**Pega a informação do formulário na chave aluno*/
        try{
            String aluno = req.getParameter("aluno");
            /**Pega a informação do formulário da chave frequencia*/
            Float freq= Float.parseFloat(req.getParameter("frequencia"));
            /**Pega a informação do formulário da chave mediaNormal*/
            Float mn= Float.parseFloat(req.getParameter("mediaNormal"));
            /**Pega a informação do formulário da chave mediaFinal*/
            Float mf= Float.parseFloat(req.getParameter("mediaFinal"));
            /**Pega a informação do formulário da chave disciplina*/
            String disciplina = req.getParameter("disciplina");
            /**Variável que guarda se o processo pode avançar ou não */
            boolean validade=true;
            
            

            /**Verifica se a frequência está dentro dos padrões*/
            if((freq!=null)&&(freq<=100)&&(freq>=0)){
                req.setAttribute("freq", freq);
            }else{
                req.setAttribute("erroFreq", " Campo deve conter numeros entre 0-100");
                validade=false;
            }

            /**Verifica se a media normal está dentro dos padrões*/
            if((mn!=null)&&(mn<=10)&&(mn>=0)){
                req.setAttribute("mn", mn);
            }else{
                req.setAttribute("erroMn", " Campo deve conter numeros entre 0-10");
                validade=false;
            }

            /**Verifica se a media final está dentro dos padrões*/
            if((mf!=null)&&(mf<=10)&&(mf>=0)){
                req.setAttribute("mf", mf);
            }else{
                req.setAttribute("erroMf", " Campo deve conter numeros entre 0-10");
                validade=false;
            }
            /**Verifica se a opção está vazia*/
            if(disciplina.length()>3){
                req.setAttribute("disc", disciplina);
            }else{
                req.setAttribute("erroDisc", " Campo deve ser preenchido com alguma opção");
                validade=false;
            }
            /**Se rodar tudo certo, o objeto aluno é criado,a lista que contém os alunos é passada e o usuário e direcionado para a próxima pagina*/
            if(validade){
                if(disciplina.equals("Programação de Software Web")){
                    lista1.add(new Aluno(aluno,freq,mn,mf,disciplina));
                    req.getSession().setAttribute("lista1", lista1);
                    req.getRequestDispatcher("/formPsw.jsp").forward(req, resp);
                }
                else if(disciplina.equals("Análise e Projeto de Sistemas")){
                    lista2.add(new Aluno(aluno,freq,mn,mf,disciplina));
                    req.getSession().setAttribute("lista2", lista2);
                    req.getRequestDispatcher("/formAps.jsp").forward(req, resp);
                }
                else{
                    lista3.add(new Aluno(aluno,freq,mn,mf,disciplina));
                    req.getSession().setAttribute("lista3", lista3);
                    req.getRequestDispatcher("/formOea.jsp").forward(req, resp);
                }
            }
            /**Se der errado, passa o nome do aluno e volta para o formulário */
            else{
                req.setAttribute("aluno", aluno);
                req.getRequestDispatcher("/inicio.jsp").forward(req, resp);
            }
        }catch(Exception e){
            req.setAttribute("Fatalerro","Preenchimento invalido !!! ");
            req.getRequestDispatcher("/inicio.jsp").forward(req, resp);
        }
    }
}