<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.mypackage.catalogo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                Usuario pro = new Usuario();
                UsuarioDAO prd = new UsuarioDAO();
                if(request.getParameter("nome").equals("") || request.getParameter("senha").equals("")){
                    response.sendRedirect("index.jsp");
                }else{
                    pro.setNome(request.getParameter("nome"));
                    pro.setSenha(request.getParameter("senha"));
                    prd.inserir(pro);
                    response.sendRedirect("index.jsp");
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro 11: "+erro);
            }
        %>
    </body>
</html>
