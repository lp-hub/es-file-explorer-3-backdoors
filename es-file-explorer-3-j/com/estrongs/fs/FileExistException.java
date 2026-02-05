package com.estrongs.fs;

/* loaded from: classes.dex */
public class FileExistException extends FileSystemException {
    private static final long serialVersionUID = 1;
    private String fileName;

    public FileExistException(String str) {
        super("The file " + str + " allreay exists");
        this.fileName = str;
    }

    public String getFileName() {
        return this.fileName;
    }
}
