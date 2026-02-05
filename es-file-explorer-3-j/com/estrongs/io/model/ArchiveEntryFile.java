package com.estrongs.io.model;

import com.estrongs.android.util.q;
import java.io.File;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class ArchiveEntryFile extends ExtFile {
    private static final long serialVersionUID = 3636659340327122290L;
    private List<File> children;
    private boolean isRoot;
    private File parent;
    private boolean sorted;

    public ArchiveEntryFile(String str) {
        super(str);
        this.isRoot = false;
        this.sorted = false;
        this.isRoot = "/".equals(getPath()) || "\\".equals(getPath());
    }

    private void fillParentPath(File file, StringBuilder sb) {
        File parentFile = file.getParentFile();
        if (parentFile instanceof ArchiveEntryFile) {
            if (!"".equals(parentFile.getName())) {
                sb.insert(0, "/").insert(0, parentFile.getName());
            }
            fillParentPath(parentFile, sb);
        } else if (parentFile instanceof MountPointFile) {
            sb.insert(0, parentFile.getAbsolutePath());
        }
    }

    public void attachChild(ArchiveEntryFile archiveEntryFile) {
        archiveEntryFile.setParent(this);
        if (this.children == null) {
            this.children = new LinkedList();
        }
        this.children.add(archiveEntryFile);
    }

    @Override // java.io.File
    public String getAbsolutePath() {
        StringBuilder sb = new StringBuilder();
        sb.append(getName());
        fillParentPath(this, sb);
        return sb.toString();
    }

    @Override // java.io.File
    public File getParentFile() {
        return this.parent;
    }

    public long getSize() {
        return -1L;
    }

    @Override // java.io.File
    public boolean isDirectory() {
        return true;
    }

    public boolean isEncrypted() {
        return false;
    }

    public boolean isRoot() {
        return this.isRoot;
    }

    @Override // java.io.File
    public long length() {
        return getSize();
    }

    @Override // com.estrongs.io.model.ExtFile, java.io.File
    public File[] listFiles() {
        if (this.children == null) {
            return new File[0];
        }
        if (!this.sorted) {
            Collections.sort(this.children, q.c);
            this.sorted = true;
        }
        return (File[]) this.children.toArray(new File[0]);
    }

    public void setParent(File file) {
        this.parent = file;
    }
}
