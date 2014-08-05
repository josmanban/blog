package blog
import grails.converters.JSON

class ControllerFunctions {
	public static boolean isAjax(request) {
   return "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
}

}