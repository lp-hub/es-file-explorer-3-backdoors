.class final Lcom/estrongs/android/pop/utils/ar;
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

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ar;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/ar;->b:Lcom/estrongs/android/ui/pcs/v;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/ar;->c:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/estrongs/android/ui/pcs/x;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ar;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/x;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/pop/utils/as;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/utils/as;-><init>(Lcom/estrongs/android/pop/utils/ar;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/x;->a(Lcom/estrongs/android/ui/pcs/ag;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/x;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ar;->c:[Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
