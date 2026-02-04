.class Lcom/estrongs/android/pop/app/editor/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/n;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/editor/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/o;-><init>(Lcom/estrongs/android/pop/app/editor/n;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
