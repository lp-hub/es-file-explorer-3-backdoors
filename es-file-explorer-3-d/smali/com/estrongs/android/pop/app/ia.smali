.class Lcom/estrongs/android/pop/app/ia;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/ag;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/hz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/hz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ia;->a:Lcom/estrongs/android/pop/app/hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ia;->a:Lcom/estrongs/android/pop/app/hz;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/hz;->b:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->ag()V

    :cond_0
    return-void
.end method
