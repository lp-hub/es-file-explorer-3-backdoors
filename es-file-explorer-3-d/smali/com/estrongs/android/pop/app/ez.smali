.class Lcom/estrongs/android/pop/app/ez;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ey;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ey;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ez;->a:Lcom/estrongs/android/pop/app/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->d()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->N()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ez;->a:Lcom/estrongs/android/pop/app/ey;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
