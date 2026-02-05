package org.apache.commons.logging;

/* loaded from: classes.dex */
public class LogFactory {

    /* loaded from: classes.dex */
    class Logger implements Log {
        private Logger() {
        }

        @Override // org.apache.commons.logging.Log
        public void debug(Object obj) {
        }

        @Override // org.apache.commons.logging.Log
        public void debug(Object obj, Throwable th) {
        }

        @Override // org.apache.commons.logging.Log
        public void error(Object obj) {
        }

        @Override // org.apache.commons.logging.Log
        public void error(Object obj, Throwable th) {
        }

        @Override // org.apache.commons.logging.Log
        public void fatal(Object obj) {
        }

        @Override // org.apache.commons.logging.Log
        public void fatal(Object obj, Throwable th) {
        }

        @Override // org.apache.commons.logging.Log
        public void info(Object obj) {
        }

        @Override // org.apache.commons.logging.Log
        public void info(Object obj, Throwable th) {
        }

        @Override // org.apache.commons.logging.Log
        public boolean isDebugEnabled() {
            return false;
        }

        @Override // org.apache.commons.logging.Log
        public boolean isErrorEnabled() {
            return false;
        }

        @Override // org.apache.commons.logging.Log
        public boolean isFatalEnabled() {
            return false;
        }

        @Override // org.apache.commons.logging.Log
        public boolean isInfoEnabled() {
            return false;
        }

        @Override // org.apache.commons.logging.Log
        public boolean isTraceEnabled() {
            return false;
        }

        @Override // org.apache.commons.logging.Log
        public boolean isWarnEnabled() {
            return false;
        }

        @Override // org.apache.commons.logging.Log
        public void trace(Object obj) {
        }

        @Override // org.apache.commons.logging.Log
        public void trace(Object obj, Throwable th) {
        }

        @Override // org.apache.commons.logging.Log
        public void warn(Object obj) {
        }

        @Override // org.apache.commons.logging.Log
        public void warn(Object obj, Throwable th) {
        }
    }

    public static Log getLog(Class cls) {
        return new Logger();
    }

    public static Log getLog(String str) {
        return new Logger();
    }
}
