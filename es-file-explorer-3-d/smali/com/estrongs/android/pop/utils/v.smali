.class Lcom/estrongs/android/pop/utils/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/v;->a:Lcom/estrongs/android/pop/utils/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/v;->a:Lcom/estrongs/android/pop/utils/u;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()V

    return-void
.end method
