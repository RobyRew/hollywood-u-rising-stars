.class Lcom/jirbo/adcolony/bb;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field a:Lcom/jirbo/adcolony/y;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jirbo/adcolony/y;)V
    .locals 1

    .prologue
    .line 330
    if-nez p1, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/ba;->H:Lcom/jirbo/adcolony/y;

    iput-object v0, p0, Lcom/jirbo/adcolony/bb;->a:Lcom/jirbo/adcolony/y;

    .line 332
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/bb;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/bb;->sendMessage(Landroid/os/Message;)Z

    .line 333
    return-void

    .line 331
    :cond_0
    iput-object p1, p0, Lcom/jirbo/adcolony/bb;->a:Lcom/jirbo/adcolony/y;

    goto :goto_0
.end method

.method public b(Lcom/jirbo/adcolony/y;)V
    .locals 1

    .prologue
    .line 337
    if-nez p1, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/ba;->H:Lcom/jirbo/adcolony/y;

    iput-object v0, p0, Lcom/jirbo/adcolony/bb;->a:Lcom/jirbo/adcolony/y;

    .line 339
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/bb;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/bb;->sendMessage(Landroid/os/Message;)Z

    .line 340
    return-void

    .line 338
    :cond_0
    iput-object p1, p0, Lcom/jirbo/adcolony/bb;->a:Lcom/jirbo/adcolony/y;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 345
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 348
    :pswitch_0
    const-string/jumbo v0, "skip"

    iget-object v1, p0, Lcom/jirbo/adcolony/bb;->a:Lcom/jirbo/adcolony/y;

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/ba;->a(Ljava/lang/String;Lcom/jirbo/adcolony/y;)V

    .line 349
    sget-object v0, Lcom/jirbo/adcolony/ba;->H:Lcom/jirbo/adcolony/y;

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/jirbo/adcolony/ba;->H:Lcom/jirbo/adcolony/y;

    const/4 v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/y;->a:I

    .line 352
    sget-object v0, Lcom/jirbo/adcolony/ba;->H:Lcom/jirbo/adcolony/y;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/y;->e()V

    goto :goto_0

    .line 358
    :pswitch_1
    new-instance v0, Lcom/jirbo/adcolony/h;

    invoke-direct {v0}, Lcom/jirbo/adcolony/h;-><init>()V

    .line 359
    sget-object v1, Lcom/jirbo/adcolony/ba;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/bi;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/bi;->P:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "html5_endcard_loading_started"

    sget-object v2, Lcom/jirbo/adcolony/ba;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->j:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 360
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/ba;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/bi;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/bi;->P:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "html5_endcard_loading_finished"

    sget-object v2, Lcom/jirbo/adcolony/ba;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->k:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 361
    :cond_2
    sget-object v1, Lcom/jirbo/adcolony/ba;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/bi;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/bi;->P:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "html5_endcard_loading_time"

    sget-object v2, Lcom/jirbo/adcolony/ba;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v2, Lcom/jirbo/adcolony/ADCVideo;->o:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;D)V

    .line 362
    :cond_3
    sget-object v1, Lcom/jirbo/adcolony/ba;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/bi;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/bi;->P:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "html5_endcard_loading_timeout"

    sget-object v2, Lcom/jirbo/adcolony/ba;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->l:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 363
    :cond_4
    sget-object v1, Lcom/jirbo/adcolony/ba;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v1, Lcom/jirbo/adcolony/ADCVideo;->p:D

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_5

    const-string/jumbo v1, "endcard_time_spent"

    sget-object v2, Lcom/jirbo/adcolony/ba;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v2, Lcom/jirbo/adcolony/ADCVideo;->p:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;D)V

    .line 364
    :cond_5
    const-string/jumbo v1, "endcard_dissolved"

    sget-object v2, Lcom/jirbo/adcolony/ba;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->m:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 365
    const-string/jumbo v1, "replay"

    sget-object v2, Lcom/jirbo/adcolony/ba;->J:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 366
    const-string/jumbo v1, "reward"

    sget-object v2, Lcom/jirbo/adcolony/ba;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->n:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/h;->b(Ljava/lang/String;Z)V

    .line 377
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    const-string/jumbo v2, "continue"

    iget-object v3, p0, Lcom/jirbo/adcolony/bb;->a:Lcom/jirbo/adcolony/y;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/ep;->a(Ljava/lang/String;Lcom/jirbo/adcolony/h;Lcom/jirbo/adcolony/y;)V

    .line 379
    sget-object v0, Lcom/jirbo/adcolony/ba;->H:Lcom/jirbo/adcolony/y;

    if-eqz v0, :cond_0

    .line 381
    sget-object v0, Lcom/jirbo/adcolony/ba;->H:Lcom/jirbo/adcolony/y;

    const/4 v1, 0x4

    iput v1, v0, Lcom/jirbo/adcolony/y;->a:I

    .line 382
    sget-object v0, Lcom/jirbo/adcolony/ba;->H:Lcom/jirbo/adcolony/y;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/y;->e()V

    goto/16 :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
