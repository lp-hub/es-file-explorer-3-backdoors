.class final Lcom/estrongs/android/pop/utils/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/android/ui/pcs/v;

.field final synthetic c:[Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/v;[Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/at;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/at;->b:Lcom/estrongs/android/ui/pcs/v;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/at;->c:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/estrongs/android/ui/pcs/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/at;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/d;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/at;->b:Lcom/estrongs/android/ui/pcs/v;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/v;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/d;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/at;->c:[Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
