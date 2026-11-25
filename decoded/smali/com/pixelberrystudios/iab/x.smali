.class Lcom/pixelberrystudios/iab/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/ak;

.field final synthetic b:Lcom/pixelberrystudios/iab/w;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/w;Lcom/pixelberrystudios/iab/ak;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iput-object p2, p0, Lcom/pixelberrystudios/iab/x;->a:Lcom/pixelberrystudios/iab/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 176
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    const-string/jumbo v1, "Billing service connected."

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    invoke-static {p2}, Lcom/android/vending/billing/a;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iput-object v1, v0, Lcom/pixelberrystudios/iab/w;->i:Lcom/android/vending/billing/IInAppBillingService;

    .line 178
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/w;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    const-string/jumbo v2, "Checking for in-app billing 3 support."

    invoke-virtual {v1, v2}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iget-object v1, v1, Lcom/pixelberrystudios/iab/w;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string/jumbo v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 184
    if-eqz v1, :cond_3

    .line 185
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->a:Lcom/pixelberrystudios/iab/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->a:Lcom/pixelberrystudios/iab/ak;

    new-instance v2, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/pixelberrystudios/iab/ak;->a(Lcom/pixelberrystudios/iab/am;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pixelberrystudios/iab/w;->d:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iget-boolean v0, v0, Lcom/pixelberrystudios/iab/w;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->a:Lcom/pixelberrystudios/iab/ak;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->a:Lcom/pixelberrystudios/iab/ak;

    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v2, "Setup successful."

    invoke-direct {v1, v5, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/pixelberrystudios/iab/ak;->a(Lcom/pixelberrystudios/iab/am;)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iget-boolean v0, v0, Lcom/pixelberrystudios/iab/w;->c:Z

    if-nez v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iput-object v6, v0, Lcom/pixelberrystudios/iab/w;->j:Landroid/content/ServiceConnection;

    .line 222
    :cond_2
    :goto_0
    return-void

    .line 192
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In-app billing version 3 supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iget-object v1, v1, Lcom/pixelberrystudios/iab/w;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string/jumbo v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 196
    if-nez v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    const-string/jumbo v1, "Subscriptions AVAILABLE."

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pixelberrystudios/iab/w;->d:Z

    .line 204
    :goto_1
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pixelberrystudios/iab/w;->c:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iget-boolean v0, v0, Lcom/pixelberrystudios/iab/w;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->a:Lcom/pixelberrystudios/iab/ak;

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->a:Lcom/pixelberrystudios/iab/ak;

    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v2, "Setup successful."

    invoke-direct {v1, v5, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/pixelberrystudios/iab/ak;->a(Lcom/pixelberrystudios/iab/am;)V

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iget-boolean v0, v0, Lcom/pixelberrystudios/iab/w;->c:Z

    if-nez v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iput-object v6, v0, Lcom/pixelberrystudios/iab/w;->j:Landroid/content/ServiceConnection;

    goto :goto_0

    .line 201
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    :try_start_3
    iget-object v1, p0, Lcom/pixelberrystudios/iab/x;->a:Lcom/pixelberrystudios/iab/ak;

    if-eqz v1, :cond_6

    .line 208
    iget-object v1, p0, Lcom/pixelberrystudios/iab/x;->a:Lcom/pixelberrystudios/iab/ak;

    new-instance v2, Lcom/pixelberrystudios/iab/am;

    const/16 v3, -0x3e9

    const-string/jumbo v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/pixelberrystudios/iab/ak;->a(Lcom/pixelberrystudios/iab/am;)V

    .line 211
    :cond_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iget-boolean v0, v0, Lcom/pixelberrystudios/iab/w;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->a:Lcom/pixelberrystudios/iab/ak;

    if-eqz v0, :cond_7

    .line 216
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->a:Lcom/pixelberrystudios/iab/ak;

    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v2, "Setup successful."

    invoke-direct {v1, v5, v2}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/pixelberrystudios/iab/ak;->a(Lcom/pixelberrystudios/iab/am;)V

    .line 218
    :cond_7
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iget-boolean v0, v0, Lcom/pixelberrystudios/iab/w;->c:Z

    if-nez v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iput-object v6, v0, Lcom/pixelberrystudios/iab/w;->j:Landroid/content/ServiceConnection;

    goto/16 :goto_0

    .line 215
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iget-boolean v1, v1, Lcom/pixelberrystudios/iab/w;->c:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/pixelberrystudios/iab/x;->a:Lcom/pixelberrystudios/iab/ak;

    if-eqz v1, :cond_8

    .line 216
    iget-object v1, p0, Lcom/pixelberrystudios/iab/x;->a:Lcom/pixelberrystudios/iab/ak;

    new-instance v2, Lcom/pixelberrystudios/iab/am;

    const-string/jumbo v3, "Setup successful."

    invoke-direct {v2, v5, v3}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/pixelberrystudios/iab/ak;->a(Lcom/pixelberrystudios/iab/am;)V

    .line 218
    :cond_8
    iget-object v1, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iget-boolean v1, v1, Lcom/pixelberrystudios/iab/w;->c:Z

    if-nez v1, :cond_9

    .line 219
    iget-object v1, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    iput-object v6, v1, Lcom/pixelberrystudios/iab/w;->j:Landroid/content/ServiceConnection;

    :cond_9
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    const-string/jumbo v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/w;->c(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/pixelberrystudios/iab/x;->b:Lcom/pixelberrystudios/iab/w;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pixelberrystudios/iab/w;->i:Lcom/android/vending/billing/IInAppBillingService;

    .line 172
    return-void
.end method
