.class Lcom/estrongs/android/ui/pcs/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bi;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/bb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bc;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Press_Normalize"

    const-string v2, "Press_Normalize"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Normalize_UV"

    const-string v2, "Normalize_UV"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
