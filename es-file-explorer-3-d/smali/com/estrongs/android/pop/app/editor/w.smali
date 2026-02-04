.class Lcom/estrongs/android/pop/app/editor/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/app/editor/an;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/w;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/pop/app/editor/x;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/editor/x;-><init>(Lcom/estrongs/android/pop/app/editor/w;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/editor/an;-><init>(Landroid/content/Context;ILcom/estrongs/android/pop/app/editor/ar;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/an;->a()V

    return-void
.end method
