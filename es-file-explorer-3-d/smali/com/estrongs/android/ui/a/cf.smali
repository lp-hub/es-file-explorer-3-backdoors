.class Lcom/estrongs/android/ui/a/cf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/v;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/ce;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/cf;->a:Lcom/estrongs/android/ui/a/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->j()Lcom/estrongs/android/ui/pcs/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/android/ui/pcs/v;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/cf;->a:Lcom/estrongs/android/ui/a/ce;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/ce;->a(Lcom/estrongs/android/ui/a/ce;)V

    return-void
.end method
