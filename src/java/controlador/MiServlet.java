import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

@WebServlet("/MiServlet")
public class MiServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String nombre = request.getParameter("nombre");
            int anio = Integer.parseInt(request.getParameter("anio"));

            int edad = 2026 - anio;
            
            // Obtener lista de historial
            ArrayList<String[]> historial = (ArrayList<String[]>) request.getSession().getAttribute("historial");

            if (historial == null) {
            historial = new ArrayList<>();
}

// Guardar nueva búsqueda
            historial.add(new String[]{nombre, String.valueOf(anio), String.valueOf(edad)});

// Guardar en sesión
            request.getSession().setAttribute("historial", historial);

            request.setAttribute("nombre", nombre);
            request.setAttribute("edad", edad);
            request.getSession().setAttribute("nombre", nombre);
            request.getSession().setAttribute("anio", anio);

            RequestDispatcher rd = request.getRequestDispatcher("resultado.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            response.getWriter().println("Error: datos inválidos");
        }
    }
}