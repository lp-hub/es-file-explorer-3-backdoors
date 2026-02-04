.class Lcom/estrongs/android/pop/app/ej;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

.field final synthetic b:Lcom/estrongs/android/pop/app/ei;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ei;Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ej;->b:Lcom/estrongs/android/pop/app/ei;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->b:Lcom/estrongs/android/pop/app/ei;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ei;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->b:Lcom/estrongs/android/pop/app/ei;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ei;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->b:Lcom/estrongs/android/pop/app/ei;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ei;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->j()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->b:Lcom/estrongs/android/pop/app/ei;

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/ei;->a(Lcom/estrongs/android/pop/app/ei;J)J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->b:Lcom/estrongs/android/pop/app/ei;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ei;->a(Lcom/estrongs/android/pop/app/ei;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ej;->b:Lcom/estrongs/android/pop/app/ei;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ei;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->b:Lcom/estrongs/android/pop/app/ei;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ei;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    const-wide/16 v3, -0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->b:Lcom/estrongs/android/pop/app/ei;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ei;->b(Lcom/estrongs/android/pop/app/ei;)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->b:Lcom/estrongs/android/pop/app/ei;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ei;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ej;->b:Lcom/estrongs/android/pop/app/ei;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ei;->b(Lcom/estrongs/android/pop/app/ei;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->c(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->b:Lcom/estrongs/android/pop/app/ei;

    invoke-static {v0, v3, v4}, Lcom/estrongs/android/pop/app/ei;->a(Lcom/estrongs/android/pop/app/ei;J)J

    return-void
.end method
