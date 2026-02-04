.class Lcom/estrongs/android/ui/e/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/b/bg;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ap;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/aq;->a:Lcom/estrongs/android/ui/e/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/aq;->a:Lcom/estrongs/android/ui/e/ap;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ap;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/q;->u(Ljava/lang/String;)V

    return-void
.end method
