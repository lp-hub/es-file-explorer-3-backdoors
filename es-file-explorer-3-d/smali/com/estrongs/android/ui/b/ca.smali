.class Lcom/estrongs/android/ui/b/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cr;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/bz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ca;->a:Lcom/estrongs/android/ui/b/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ca;->a:Lcom/estrongs/android/ui/b/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/bz;->a(Lcom/estrongs/android/ui/b/bz;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ca;->a:Lcom/estrongs/android/ui/b/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/bz;->a(Lcom/estrongs/android/ui/b/bz;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    :cond_0
    return-void
.end method
