package org.apache.commons.net.ftp.parser;

import java.util.Locale;
import java.util.regex.Pattern;
import org.apache.commons.net.ftp.Configurable;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFileEntryParser;

/* loaded from: classes.dex */
public class DefaultFTPFileEntryParserFactory implements FTPFileEntryParserFactory {
    private static final String JAVA_IDENTIFIER = "\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*";
    private static final String JAVA_QUALIFIED_NAME = "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*";
    private static final Pattern JAVA_QUALIFIED_NAME_PATTERN = Pattern.compile(JAVA_QUALIFIED_NAME);

    private FTPFileEntryParser createFileEntryParser(String str, FTPClientConfig fTPClientConfig) {
        FTPFileEntryParser fTPFileEntryParser = null;
        if (JAVA_QUALIFIED_NAME_PATTERN.matcher(str).matches()) {
            try {
                Class<?> cls = Class.forName(str);
                try {
                    fTPFileEntryParser = (FTPFileEntryParser) cls.newInstance();
                } catch (ClassCastException e) {
                    throw new ParserInitializationException(String.valueOf(cls.getName()) + " does not implement the interface org.apache.commons.net.ftp.FTPFileEntryParser.", e);
                } catch (Exception e2) {
                    throw new ParserInitializationException("Error initializing parser", e2);
                } catch (ExceptionInInitializerError e3) {
                    throw new ParserInitializationException("Error initializing parser", e3);
                }
            } catch (ClassNotFoundException e4) {
            }
        }
        if (fTPFileEntryParser == null) {
            String upperCase = str.toUpperCase(Locale.ENGLISH);
            if (upperCase.indexOf(FTPClientConfig.SYST_UNIX) >= 0) {
                fTPFileEntryParser = new UnixFTPEntryParser(fTPClientConfig);
            } else if (upperCase.indexOf(FTPClientConfig.SYST_VMS) >= 0) {
                fTPFileEntryParser = new VMSVersioningFTPEntryParser(fTPClientConfig);
            } else if (upperCase.indexOf(FTPClientConfig.SYST_NT) >= 0) {
                fTPFileEntryParser = createNTFTPEntryParser(fTPClientConfig);
            } else if (upperCase.indexOf(FTPClientConfig.SYST_OS2) >= 0) {
                fTPFileEntryParser = new OS2FTPEntryParser(fTPClientConfig);
            } else if (upperCase.indexOf(FTPClientConfig.SYST_OS400) >= 0 || upperCase.indexOf(FTPClientConfig.SYST_AS400) >= 0) {
                fTPFileEntryParser = createOS400FTPEntryParser(fTPClientConfig);
            } else if (upperCase.indexOf(FTPClientConfig.SYST_MVS) >= 0) {
                fTPFileEntryParser = new MVSFTPEntryParser();
            } else if (upperCase.indexOf(FTPClientConfig.SYST_NETWARE) >= 0) {
                fTPFileEntryParser = new NetwareFTPEntryParser(fTPClientConfig);
            } else {
                if (upperCase.indexOf(FTPClientConfig.SYST_L8) < 0) {
                    throw new ParserInitializationException("Unknown parser type: " + str);
                }
                fTPFileEntryParser = new UnixFTPEntryParser(fTPClientConfig);
            }
        }
        if (fTPFileEntryParser instanceof Configurable) {
            ((Configurable) fTPFileEntryParser).configure(fTPClientConfig);
        }
        return fTPFileEntryParser;
    }

    private FTPFileEntryParser createNTFTPEntryParser(FTPClientConfig fTPClientConfig) {
        return (fTPClientConfig == null || !FTPClientConfig.SYST_NT.equals(fTPClientConfig.getServerSystemKey())) ? new CompositeFileEntryParser(new FTPFileEntryParser[]{new NTFTPEntryParser(fTPClientConfig), new UnixFTPEntryParser(fTPClientConfig)}) : new NTFTPEntryParser(fTPClientConfig);
    }

    private FTPFileEntryParser createOS400FTPEntryParser(FTPClientConfig fTPClientConfig) {
        return (fTPClientConfig == null || !FTPClientConfig.SYST_OS400.equals(fTPClientConfig.getServerSystemKey())) ? new CompositeFileEntryParser(new FTPFileEntryParser[]{new OS400FTPEntryParser(fTPClientConfig), new UnixFTPEntryParser(fTPClientConfig)}) : new OS400FTPEntryParser(fTPClientConfig);
    }

    @Override // org.apache.commons.net.ftp.parser.FTPFileEntryParserFactory
    public FTPFileEntryParser createFileEntryParser(String str) {
        if (str == null) {
            throw new ParserInitializationException("Parser key cannot be null");
        }
        return createFileEntryParser(str, null);
    }

    @Override // org.apache.commons.net.ftp.parser.FTPFileEntryParserFactory
    public FTPFileEntryParser createFileEntryParser(FTPClientConfig fTPClientConfig) {
        return createFileEntryParser(fTPClientConfig.getServerSystemKey(), fTPClientConfig);
    }

    public FTPFileEntryParser createMVSEntryParser() {
        return new MVSFTPEntryParser();
    }

    public FTPFileEntryParser createNTFTPEntryParser() {
        return createNTFTPEntryParser(null);
    }

    public FTPFileEntryParser createNetwareFTPEntryParser() {
        return new NetwareFTPEntryParser();
    }

    public FTPFileEntryParser createOS2FTPEntryParser() {
        return new OS2FTPEntryParser();
    }

    public FTPFileEntryParser createOS400FTPEntryParser() {
        return createOS400FTPEntryParser(null);
    }

    public FTPFileEntryParser createUnixFTPEntryParser() {
        return new UnixFTPEntryParser();
    }

    public FTPFileEntryParser createVMSVersioningFTPEntryParser() {
        return new VMSVersioningFTPEntryParser();
    }
}
