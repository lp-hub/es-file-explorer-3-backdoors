.class Lcom/estrongs/android/pop/app/editor/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/r;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/app/editor/ae;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/r;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/editor/ae;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/g;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ae;->start()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
