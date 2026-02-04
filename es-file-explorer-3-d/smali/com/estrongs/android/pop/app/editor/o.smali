.class Lcom/estrongs/android/pop/app/editor/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/o;->a:Lcom/estrongs/android/pop/app/editor/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/o;->a:Lcom/estrongs/android/pop/app/editor/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/editor/n;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->r(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/o;->a:Lcom/estrongs/android/pop/app/editor/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/editor/n;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->s(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/c;->i()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/o;->a:Lcom/estrongs/android/pop/app/editor/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/editor/n;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/b;)Lcom/estrongs/android/pop/app/editor/b;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/o;->a:Lcom/estrongs/android/pop/app/editor/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/editor/n;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->finish()V

    return-void
.end method
