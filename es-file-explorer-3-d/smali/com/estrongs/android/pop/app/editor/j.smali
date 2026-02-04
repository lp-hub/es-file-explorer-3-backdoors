.class Lcom/estrongs/android/pop/app/editor/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/j;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    new-instance v0, Lcom/estrongs/android/util/b;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/j;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/j;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/editor/k;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/editor/k;-><init>(Lcom/estrongs/android/pop/app/editor/j;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/util/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/util/f;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/b;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/j;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    const/4 v0, 0x1

    return v0
.end method
