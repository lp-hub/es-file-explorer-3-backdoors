.class Lcom/estrongs/android/view/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/as;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/as;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/av;->a:Lcom/estrongs/android/view/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/av;->a:Lcom/estrongs/android/view/as;

    iget-object v0, v0, Lcom/estrongs/android/view/as;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->g()V

    return-void
.end method
