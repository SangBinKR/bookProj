package vo;

public class ActionForward {

	private String Path; 
	private boolean isRedirect;
	public String getPath() {
		return Path;
	}
	public void setPath(String path) {
		Path = path;
	}
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	
}
