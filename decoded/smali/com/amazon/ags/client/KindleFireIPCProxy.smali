.class public Lcom/amazon/ags/client/KindleFireIPCProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/client/KindleFireProxy;


# static fields
.field private static final SERVICE_CLASS_NAME:Ljava/lang/String; = "com.amazon.ags.app.service.AmazonGamesService"

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.ags.app"

.field private static final TAG:Ljava/lang/String; = "KindleFireIPCProxy"


# instance fields
.field private asynchronousMessenger:Landroid/os/Messenger;

.field private callback:Lcom/amazon/ags/client/KindleFireBindingCallback;

.field private final context:Landroid/content/Context;

.field private isKindle:Ljava/lang/Boolean;

.field private isOverlaysSupported:Ljava/lang/Boolean;

.field private isUniversalSupported:Ljava/lang/Boolean;

.field private sessionId:Ljava/lang/String;

.field private status:Lcom/amazon/ags/client/KindleFireStatus;

.field private synchronousBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->synchronousBinder:Landroid/os/IBinder;

    .line 51
    iput-object v1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->asynchronousMessenger:Landroid/os/Messenger;

    .line 53
    iput-object v1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->callback:Lcom/amazon/ags/client/KindleFireBindingCallback;

    .line 56
    sget-object v0, Lcom/amazon/ags/client/KindleFireStatus;->INITIALIZING:Lcom/amazon/ags/client/KindleFireStatus;

    iput-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->status:Lcom/amazon/ags/client/KindleFireStatus;

    .line 57
    iput-object v1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isUniversalSupported:Ljava/lang/Boolean;

    .line 60
    iput-object v1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isKindle:Ljava/lang/Boolean;

    .line 62
    iput-object v1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isOverlaysSupported:Ljava/lang/Boolean;

    .line 65
    iput-object p1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->context:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$002(Lcom/amazon/ags/client/KindleFireIPCProxy;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->asynchronousMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/ags/client/KindleFireIPCProxy;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->onBindChange()V

    return-void
.end method

.method static synthetic access$202(Lcom/amazon/ags/client/KindleFireIPCProxy;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->synchronousBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/ags/client/KindleFireIPCProxy;Lcom/amazon/ags/client/KindleFireStatus;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/KindleFireIPCProxy;->changeStatus(Lcom/amazon/ags/client/KindleFireStatus;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/ags/client/KindleFireIPCProxy;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->onAuthorized()V

    return-void
.end method

.method private authorize()V
    .locals 3

    .prologue
    .line 397
    const-string/jumbo v0, "KindleFireIPCProxy"

    const-string/jumbo v1, "Attempting to Authorize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 399
    const/16 v1, 0x2c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 400
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/amazon/ags/client/KindleFireIPCProxy$3;

    invoke-direct {v2, p0}, Lcom/amazon/ags/client/KindleFireIPCProxy$3;-><init>(Lcom/amazon/ags/client/KindleFireIPCProxy;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 428
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    const-string/jumbo v1, "KindleFireIPCProxy"

    const-string/jumbo v2, "Unable to send Message to Service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    sget-object v0, Lcom/amazon/ags/client/KindleFireStatus;->CANNOT_AUTHORIZE:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->changeStatus(Lcom/amazon/ags/client/KindleFireStatus;)V

    goto :goto_0
.end method

.method private bindToAsynchronousService(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 268
    new-instance v0, Lcom/amazon/ags/client/KindleFireIPCProxy$1;

    invoke-direct {v0, p0}, Lcom/amazon/ags/client/KindleFireIPCProxy$1;-><init>(Lcom/amazon/ags/client/KindleFireIPCProxy;)V

    .line 282
    invoke-direct {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->createBindIntent()Landroid/content/Intent;

    move-result-object v1

    .line 283
    const-string/jumbo v2, "BindAsynchronous"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 286
    const-string/jumbo v1, "KindleFireIPCProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "binding result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 289
    const-string/jumbo v0, "KindleFireIPCProxy"

    const-string/jumbo v1, "Device has an outdated version of Amazon Game Services.  Player will be in Guest mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v0, Lcom/amazon/ags/client/KindleFireStatus;->UNIVERSAL_NOT_SUPPORTED:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->changeStatus(Lcom/amazon/ags/client/KindleFireStatus;)V

    goto :goto_0
.end method

.method private bindToSynchronousService(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Lcom/amazon/ags/client/KindleFireIPCProxy$2;

    invoke-direct {v0, p0}, Lcom/amazon/ags/client/KindleFireIPCProxy$2;-><init>(Lcom/amazon/ags/client/KindleFireIPCProxy;)V

    .line 310
    invoke-direct {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->createBindIntent()Landroid/content/Intent;

    move-result-object v1

    .line 311
    const-string/jumbo v2, "BindSynchronous"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 316
    const-string/jumbo v0, "KindleFireIPCProxy"

    const-string/jumbo v1, "Device has an outdated version of Amazon Game Services.  Player will be in Guest mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v0, Lcom/amazon/ags/client/KindleFireStatus;->UNIVERSAL_NOT_SUPPORTED:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->changeStatus(Lcom/amazon/ags/client/KindleFireStatus;)V

    goto :goto_0
.end method

.method private changeStatus(Lcom/amazon/ags/client/KindleFireStatus;)V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->status:Lcom/amazon/ags/client/KindleFireStatus;

    if-eq p1, v0, :cond_0

    .line 374
    const-string/jumbo v0, "KindleFireIPCProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Changing Status from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->status:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iput-object p1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->status:Lcom/amazon/ags/client/KindleFireStatus;

    .line 376
    invoke-direct {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->notifyCaller()V

    .line 378
    :cond_0
    return-void
.end method

.method private createBindIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 323
    const-string/jumbo v1, "com.amazon.ags.app"

    const-string/jumbo v2, "com.amazon.ags.app.service.AmazonGamesService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string/jumbo v1, "CLIENT_VERSION"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    return-object v0
.end method

.method private initSession()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 382
    const/16 v1, 0x2e

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/amazon/ags/client/KindleFireIPCProxy;->transact(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->sessionId:Ljava/lang/String;

    .line 384
    iget-object v1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->sessionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const-string/jumbo v1, "KindleFireIPCProxy"

    const-string/jumbo v2, "Could not obtain session"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return v0

    .line 388
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    const-string/jumbo v1, "KindleFireIPCProxy"

    const-string/jumbo v2, "Could not obtain session"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isBound()Z
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->synchronousBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->asynchronousMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    .line 330
    :cond_0
    const-string/jumbo v0, "KindleFireIPCProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "synchronousBinder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->synchronousBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " serviceMessengerClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->asynchronousMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    .line 333
    :cond_1
    const-string/jumbo v0, "KindleFireIPCProxy"

    const-string/jumbo v1, "Client is bound to service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyCaller()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->callback:Lcom/amazon/ags/client/KindleFireBindingCallback;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->status:Lcom/amazon/ags/client/KindleFireStatus;

    sget-object v1, Lcom/amazon/ags/client/KindleFireStatus;->SERVICE_CONNECTED:Lcom/amazon/ags/client/KindleFireStatus;

    if-ne v0, v1, :cond_1

    .line 365
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->callback:Lcom/amazon/ags/client/KindleFireBindingCallback;

    invoke-interface {v0}, Lcom/amazon/ags/client/KindleFireBindingCallback;->onBound()V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->callback:Lcom/amazon/ags/client/KindleFireBindingCallback;

    iget-object v1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->status:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-interface {v0, v1}, Lcom/amazon/ags/client/KindleFireBindingCallback;->onFailure(Lcom/amazon/ags/client/KindleFireStatus;)V

    goto :goto_0
.end method

.method private onAuthorized()V
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    sget-object v0, Lcom/amazon/ags/client/KindleFireStatus;->SERVICE_CONNECTED:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->changeStatus(Lcom/amazon/ags/client/KindleFireStatus;)V

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    sget-object v0, Lcom/amazon/ags/client/KindleFireStatus;->NOT_REGISTERED:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->changeStatus(Lcom/amazon/ags/client/KindleFireStatus;)V

    goto :goto_0
.end method

.method private declared-synchronized onBindChange()V
    .locals 2

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->status:Lcom/amazon/ags/client/KindleFireStatus;

    sget-object v1, Lcom/amazon/ags/client/KindleFireStatus;->SERVICE_CONNECTED:Lcom/amazon/ags/client/KindleFireStatus;

    if-ne v0, v1, :cond_0

    .line 341
    sget-object v0, Lcom/amazon/ags/client/KindleFireStatus;->SERVICE_DISCONNECTED:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->changeStatus(Lcom/amazon/ags/client/KindleFireStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 346
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->status:Lcom/amazon/ags/client/KindleFireStatus;

    sget-object v1, Lcom/amazon/ags/client/KindleFireStatus;->INITIALIZING:Lcom/amazon/ags/client/KindleFireStatus;

    if-ne v0, v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->isUniversalSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 351
    sget-object v0, Lcom/amazon/ags/client/KindleFireStatus;->UNIVERSAL_NOT_SUPPORTED:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->changeStatus(Lcom/amazon/ags/client/KindleFireStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 355
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->initSession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    invoke-direct {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->authorize()V

    goto :goto_0

    .line 358
    :cond_3
    sget-object v0, Lcom/amazon/ags/client/KindleFireStatus;->UNIVERSAL_NOT_SUPPORTED:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->changeStatus(Lcom/amazon/ags/client/KindleFireStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 459
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "CLIENT_VERSION"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "SESSION_ID"

    iget-object v2, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->asynchronousMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    .line 464
    const-string/jumbo v0, "KindleFireIPCProxy"

    const-string/jumbo v1, "Service is not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->asynchronousMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private transact(ILandroid/os/Parcel;)Landroid/os/Parcel;
    .locals 3

    .prologue
    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->synchronousBinder:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 446
    const-string/jumbo v1, "KindleFireIPCProxy"

    const-string/jumbo v2, "transact() was called while disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_0
    return-object v0

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->synchronousBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    goto :goto_0
.end method


# virtual methods
.method public final bindToGameCircleService(Lcom/amazon/ags/client/KindleFireBindingCallback;)V
    .locals 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->callback:Lcom/amazon/ags/client/KindleFireBindingCallback;

    .line 71
    sget-object v0, Lcom/amazon/ags/client/KindleFireStatus;->INITIALIZING:Lcom/amazon/ags/client/KindleFireStatus;

    iput-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->status:Lcom/amazon/ags/client/KindleFireStatus;

    .line 73
    invoke-virtual {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->isKindle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v0, "KindleFireIPCProxy"

    const-string/jumbo v1, "Device appears to be a Kindle Fire.  Attempting to connect to Amazon Game Services"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->bindToAsynchronousService(Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->bindToSynchronousService(Landroid/content/Context;)V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string/jumbo v0, "KindleFireIPCProxy"

    const-string/jumbo v1, "Device does not appear to be a Kindle Fire."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v0, Lcom/amazon/ags/client/KindleFireStatus;->UNIVERSAL_NOT_SUPPORTED:Lcom/amazon/ags/client/KindleFireStatus;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->changeStatus(Lcom/amazon/ags/client/KindleFireStatus;)V

    goto :goto_0
.end method

.method public final getStatus()Lcom/amazon/ags/client/KindleFireStatus;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->status:Lcom/amazon/ags/client/KindleFireStatus;

    return-object v0
.end method

.method public declared-synchronized isKindle()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isKindle:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->createBindIntent()Landroid/content/Intent;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isKindle:Ljava/lang/Boolean;

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isKindle:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOptedIn()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 129
    const/16 v2, 0x2a

    :try_start_0
    invoke-direct {p0, v2, v1}, Lcom/amazon/ags/client/KindleFireIPCProxy;->transact(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 137
    :goto_0
    return v0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    const-string/jumbo v2, "KindleFireIPCProxy"

    const-string/jumbo v3, "Unable to determine whether Customer is opted in to GameCircle.  Defaulting to false."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 135
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public isOverlaysSupported()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isOverlaysSupported:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isOverlaysSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 262
    :goto_0
    return v0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->isKindle()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->isUniversalSupported()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 249
    goto :goto_0

    .line 252
    :cond_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 254
    const/16 v2, 0x2f

    :try_start_0
    invoke-direct {p0, v2, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->transact(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 257
    const-string/jumbo v2, "KindleFireIPCProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Checking isOverlaysSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 261
    const-string/jumbo v2, "KindleFireIPCProxy"

    const-string/jumbo v3, "Unable to determine whether overlays are supported.  Defaulting to false."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 262
    goto :goto_0
.end method

.method public final isReady()Z
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->status:Lcom/amazon/ags/client/KindleFireStatus;

    sget-object v1, Lcom/amazon/ags/client/KindleFireStatus;->SERVICE_CONNECTED:Lcom/amazon/ags/client/KindleFireStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegistered()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-direct {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    const-string/jumbo v1, "KindleFireIPCProxy"

    const-string/jumbo v2, "Attempting to check is authenticated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 178
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 179
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 180
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Lcom/amazon/ags/client/KindleFireIPCProxy;->transact(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 182
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 185
    const-string/jumbo v2, "KindleFireIPCProxy"

    const-string/jumbo v3, "Unable to determine whether device is registered. Defaulting to false."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized isUniversalSupported()Z
    .locals 2

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isUniversalSupported:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isUniversalSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 122
    :goto_0
    monitor-exit p0

    return v0

    .line 107
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 109
    const/16 v1, 0x28

    :try_start_2
    invoke-direct {p0, v1, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->transact(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isUniversalSupported:Ljava/lang/Boolean;

    .line 112
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isUniversalSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string/jumbo v0, "KindleFireIPCProxy"

    const-string/jumbo v1, "Device has compatible version of Amazon Game Services."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isUniversalSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_0

    .line 115
    :cond_1
    :try_start_4
    const-string/jumbo v0, "KindleFireIPCProxy"

    const-string/jumbo v1, "Device has an outdated version of Amazon Game Services.  Player will be in Guest mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 119
    :try_start_5
    const-string/jumbo v0, "KindleFireIPCProxy"

    const-string/jumbo v1, "Device has non-compatible version of Amazon Game Services.  Player will be in Guest mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->isUniversalSupported:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isWhispersyncEnabled()Z
    .locals 4

    .prologue
    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    const/16 v1, 0x2b

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->transact(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 161
    const-string/jumbo v1, "KindleFireIPCProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Checking isWhispersyncEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return v0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    const-string/jumbo v1, "KindleFireIPCProxy"

    const-string/jumbo v2, "Unable to determine whether Whispersync is enabled.  Defaulting to false."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOptIn(Z)V
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 144
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 145
    const-string/jumbo v2, "optIn"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 148
    const/16 v1, 0x29

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->transact(ILandroid/os/Parcel;)Landroid/os/Parcel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string/jumbo v1, "KindleFireIPCProxy"

    const-string/jumbo v2, "Unable to update OptIn status."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showOverlay(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/amazon/ags/client/KindleFireIPCProxy;->isOverlaysSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Proxying overlay requests is not supported on this device and software version."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    invoke-static {p1}, Lcom/amazon/ags/html5/util/JSONUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, "OVERLAY_ACTION_CODE"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 230
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 231
    const/16 v2, 0x30

    iput v2, v1, Landroid/os/Message;->what:I

    .line 232
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 233
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "OVERLAY_ACTION_CODE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    invoke-direct {p0, v1}, Lcom/amazon/ags/client/KindleFireIPCProxy;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string/jumbo v1, "KindleFireIPCProxy"

    const-string/jumbo v2, "Error occurred while retrieve the overlay action code from the overlay data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 237
    :catch_1
    move-exception v0

    .line 238
    const-string/jumbo v1, "KindleFireIPCProxy"

    const-string/jumbo v2, "There was an error sending the show overlay message to the APK"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public signMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 193
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 194
    const-string/jumbo v2, "verb"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v2, "body"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v2, "SESSION_ID"

    iget-object v3, p0, Lcom/amazon/ags/client/KindleFireIPCProxy;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    const/16 v2, 0x2d

    :try_start_0
    invoke-direct {p0, v2, v1}, Lcom/amazon/ags/client/KindleFireIPCProxy;->transact(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 203
    const-string/jumbo v2, "signature"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    const-string/jumbo v3, "nonce"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    const-string/jumbo v4, "token"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    const-string/jumbo v4, "signature"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string/jumbo v2, "nonce"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string/jumbo v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 212
    const/4 v0, 0x0

    goto :goto_0
.end method
