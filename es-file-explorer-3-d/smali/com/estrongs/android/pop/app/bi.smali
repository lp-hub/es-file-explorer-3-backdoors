.class Lcom/estrongs/android/pop/app/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/HideListActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/HideListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/HideListActivity;->b(Lcom/estrongs/android/pop/app/HideListActivity;)[Lcom/estrongs/android/pop/utils/af;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/HideListActivity;->b(Lcom/estrongs/android/pop/app/HideListActivity;)[Lcom/estrongs/android/pop/utils/af;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v0, v7}, Lcom/estrongs/android/pop/app/HideListActivity;->a(Lcom/estrongs/android/pop/app/HideListActivity;Z)Z

    invoke-static {}, Lcom/estrongs/android/pop/utils/aa;->b()V

    :try_start_0
    const-string v0, "/sdcard/.estrongs/hide2.txt"

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/aa;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/utils/aa;->d:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {}, Lcom/estrongs/android/pop/utils/aa;->c()[Lcom/estrongs/android/pop/utils/af;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/HideListActivity;->a(Lcom/estrongs/android/pop/app/HideListActivity;[Lcom/estrongs/android/pop/utils/af;)[Lcom/estrongs/android/pop/utils/af;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    new-instance v1, Lcom/estrongs/android/pop/app/bk;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    const v4, 0x7f030062

    iget-object v5, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/HideListActivity;->b(Lcom/estrongs/android/pop/app/HideListActivity;)[Lcom/estrongs/android/pop/utils/af;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/estrongs/android/pop/app/bk;-><init>(Lcom/estrongs/android/pop/app/HideListActivity;Landroid/content/Context;I[Lcom/estrongs/android/pop/utils/af;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/HideListActivity;->a(Lcom/estrongs/android/pop/app/HideListActivity;Lcom/estrongs/android/pop/app/bk;)Lcom/estrongs/android/pop/app/bk;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/HideListActivity;->a(Lcom/estrongs/android/pop/app/HideListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/HideListActivity;->c(Lcom/estrongs/android/pop/app/HideListActivity;)Lcom/estrongs/android/pop/app/bk;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/HideListActivity;->c(Lcom/estrongs/android/pop/app/HideListActivity;)Lcom/estrongs/android/pop/app/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/bk;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    const v1, 0x7f0b0337

    invoke-static {v0, v1, v7}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return v6

    :catch_0
    move-exception v0

    goto :goto_0
.end method
