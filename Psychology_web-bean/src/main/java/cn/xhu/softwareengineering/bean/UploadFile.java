package cn.xhu.softwareengineering.bean;

import java.io.File;

public class UploadFile {
	/* 本地或服务器上的保存文件的完整目录 */
	private String saveDirectory;
	/* 保存的文件名 */
    private String fileName;
	/* 保存的文件类型 */
    private String contentType;
	/* 文件的前置路径，如某个项目的服务器路径 */
    private String prePath;
	/* 文件在服务器上的完整访问路径 */
    private String completeSavePath;
	/* 文件的后置路径，如/img */
    private String relativeSavePath;
    

	public UploadFile(String saveDirectory, String filesystemName) {
        this.saveDirectory = saveDirectory;
        this.fileName = filesystemName;
    }

    public String getFileName() {
        return fileName;
    }

    public String getSaveDirectory() {
        return saveDirectory;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public String getPrePath() {
        if (prePath == null) {
            return "";
        }
        return prePath;
    }

    public void setPrePath(String prePath) {
        this.prePath = prePath;
        setCompleteSavePath(prePath + getRelativeSavePath());
    }

    public String getCompleteSavePath() {
        return completeSavePath;
    }

    public void setCompleteSavePath(String completeSavePath) {
        this.completeSavePath = completeSavePath;
    }

    public String getRelativeSavePath() {
        return relativeSavePath;
    }

    public void setRelativeSavePath(String relativeSavePath) {
        this.relativeSavePath = relativeSavePath;
    }

    public void setSaveDirectory(String saveDirectory) {
        this.saveDirectory = saveDirectory;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
    
    public File getFile() {
        if (getSaveDirectory() == null || getFileName() == null) {
            return null;
        } else {
            setRelativeSavePath("Psychology_web-main"+"/img" + "/articleimages" + "/" + getFileName());
            return new File(getSaveDirectory() + "/" + getFileName());
        }
    }
}
