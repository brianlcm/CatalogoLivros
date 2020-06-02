<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Livros</title>
    </head>
    <body>
        <h1>Editar Livro</h1>
        <form action="executa_editar_livro.jsp" method="post">
            <label>Título:</label><br/>
            <input type="text" name="titulo" value="<%=request.getParameter("titulo")%>"/><br/>
            
            <label>Autor(a):</label><br/>
            <input type="text" name="autor" value="<%=request.getParameter("autor")%>"/><br/>
            
            <label>Ano:</label><br/>
            <input type="number" name="ano" value="<%=request.getParameter("ano")%>"/><br/>
            
            <label>Preço</label><br/>
            <input type="number" name="preco" value="<%=request.getParameter("preco")%>"/><br/>
            
            <label>Nova foto:</label><br/>
            <input type="file" name="foto" /><br/><br/>
            
            <!-- Podemos mostrar a foto atual aqui -->
            
            <button type="submit">
                <b>Salvar</b>
            </button>
        </form>
    </body>
</html>