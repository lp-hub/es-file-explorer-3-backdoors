.class Lcom/estrongs/android/pop/utils/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/j;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/bl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bm;->a:Lcom/estrongs/android/pop/utils/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Z)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()V

    :cond_0
    return-void
.end method
