package de.innosystec.unrar.exception;

/* loaded from: classes.dex */
public class RarException extends Exception {
    private RarExceptionType type;

    /* loaded from: classes.dex */
    public enum RarExceptionType {
        notImplementedYet,
        crcError,
        notRarArchive,
        badRarArchive,
        unkownError,
        headerNotInArchive,
        wrongHeaderType,
        ioError,
        rarEncryptedException
    }

    public RarException(RarExceptionType rarExceptionType) {
        super(rarExceptionType.name());
        this.type = rarExceptionType;
    }

    public RarException(RarExceptionType rarExceptionType, String str) {
        super(rarExceptionType.name() + " - " + str);
        this.type = rarExceptionType;
    }

    public RarException(RarException rarException) {
        super(rarException.getMessage(), rarException);
        this.type = rarException.getType();
    }

    public RarException(Exception exc) {
        super(exc.getMessage(), exc);
        this.type = RarExceptionType.unkownError;
    }

    public RarExceptionType getType() {
        return this.type;
    }

    public void setType(RarExceptionType rarExceptionType) {
        this.type = rarExceptionType;
    }
}
