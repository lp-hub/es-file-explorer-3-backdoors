.class Lcom/estrongs/android/ui/pcs/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/ag;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/i;->a:Lcom/estrongs/android/ui/pcs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
