.class Lcom/estrongs/android/view/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    iput p2, v0, Lcom/estrongs/android/view/ar;->S:I

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    iget v1, v1, Lcom/estrongs/android/view/ar;->S:I

    add-int/2addr v1, p3

    iput v1, v0, Lcom/estrongs/android/view/ar;->T:I

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    iput p3, v0, Lcom/estrongs/android/view/ar;->U:I

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->G:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    iget-object v1, v1, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->Z()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/view/ar;->R:Z

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->G:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    iget-object v1, v1, Lcom/estrongs/android/view/ar;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    invoke-static {v0}, Lcom/estrongs/android/view/ar;->b(Lcom/estrongs/android/view/ar;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    invoke-static {v1}, Lcom/estrongs/android/view/ar;->c(Lcom/estrongs/android/view/ar;)Lcom/estrongs/android/util/n;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/view/ar;->V:Lcom/estrongs/android/util/n;

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->V:Lcom/estrongs/android/util/n;

    invoke-virtual {v0}, Lcom/estrongs/android/util/n;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    invoke-static {v0}, Lcom/estrongs/android/view/ar;->b(Lcom/estrongs/android/view/ar;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    iput-boolean v1, v0, Lcom/estrongs/android/view/ar;->R:Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    invoke-static {v0}, Lcom/estrongs/android/view/ar;->b(Lcom/estrongs/android/view/ar;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/ar;

    iput-boolean v1, v0, Lcom/estrongs/android/view/ar;->R:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
