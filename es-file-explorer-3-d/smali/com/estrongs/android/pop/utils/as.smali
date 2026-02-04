.class Lcom/estrongs/android/pop/utils/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/ag;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/ar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/as;->a:Lcom/estrongs/android/pop/utils/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/as;->a:Lcom/estrongs/android/pop/utils/ar;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ar;->b:Lcom/estrongs/android/ui/pcs/v;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/as;->a:Lcom/estrongs/android/pop/utils/ar;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ar;->b:Lcom/estrongs/android/ui/pcs/v;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/estrongs/android/ui/pcs/v;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/as;->a:Lcom/estrongs/android/pop/utils/ar;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ar;->b:Lcom/estrongs/android/ui/pcs/v;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/estrongs/android/ui/pcs/v;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
