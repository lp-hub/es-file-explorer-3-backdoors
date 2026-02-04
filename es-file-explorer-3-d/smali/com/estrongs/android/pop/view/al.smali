.class Lcom/estrongs/android/pop/view/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ar;

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/view/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/al;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/al;->a:Lcom/estrongs/android/view/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->U:Lcom/estrongs/android/ui/g/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/al;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v1}, Lcom/estrongs/android/view/ar;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/g/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/al;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->U:Lcom/estrongs/android/ui/g/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/f;->b()V

    return-void
.end method
