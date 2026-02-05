package org.simpleframework.xml.core;

/* loaded from: classes.dex */
class SessionManager {
    private ThreadLocal<Reference> local = new ThreadLocal<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Reference {
        private int count;
        private Session session;

        public Reference(boolean z) {
            this.session = new Session(z);
        }

        public int clear() {
            int i = this.count - 1;
            this.count = i;
            return i;
        }

        public Session get() {
            if (this.count >= 0) {
                this.count++;
            }
            return this.session;
        }
    }

    private Session create(boolean z) {
        Reference reference = new Reference(z);
        this.local.set(reference);
        return reference.get();
    }

    public void close() {
        Reference reference = this.local.get();
        if (reference == null) {
            throw new PersistenceException("Session does not exist", new Object[0]);
        }
        if (reference.clear() == 0) {
            this.local.remove();
        }
    }

    public Session open() {
        return open(true);
    }

    public Session open(boolean z) {
        Reference reference = this.local.get();
        return reference != null ? reference.get() : create(z);
    }
}
