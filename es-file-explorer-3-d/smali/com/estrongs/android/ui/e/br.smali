.class Lcom/estrongs/android/ui/e/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

.field final synthetic b:Lcom/estrongs/android/ui/e/bq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/bq;Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/br;->b:Lcom/estrongs/android/ui/e/bq;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/br;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/br;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->c()V

    const/4 v0, 0x0

    return v0
.end method
