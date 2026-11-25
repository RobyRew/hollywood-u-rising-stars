.class public Lcom/pixelberrystudios/googleplay/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/q;
.implements Lcom/google/android/gms/common/api/r;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field b:I

.field c:Z

.field d:Landroid/app/Activity;

.field e:[Ljava/lang/String;

.field f:Lcom/google/android/gms/common/api/n;

.field public g:Z

.field h:Lcom/google/android/gms/common/ConnectionResult;

.field i:Lcom/pixelberrystudios/googleplay/c;

.field j:Z

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

.field n:Lcom/pixelberrystudios/googleplay/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "UNCONFIGURED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "DISCONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "CONNECTING"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "CONNECTED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pixelberrystudios/googleplay/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v0, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    .line 97
    iput-boolean v0, p0, Lcom/pixelberrystudios/googleplay/a;->c:Z

    .line 104
    iput-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->d:Landroid/app/Activity;

    .line 117
    iput-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->f:Lcom/google/android/gms/common/api/n;

    .line 136
    iput-boolean v0, p0, Lcom/pixelberrystudios/googleplay/a;->g:Z

    .line 139
    iput-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->h:Lcom/google/android/gms/common/ConnectionResult;

    .line 142
    iput-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->i:Lcom/pixelberrystudios/googleplay/c;

    .line 145
    iput-boolean v0, p0, Lcom/pixelberrystudios/googleplay/a;->j:Z

    .line 146
    const-string/jumbo v0, "GameHelper"

    iput-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->k:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->n:Lcom/pixelberrystudios/googleplay/b;

    .line 169
    iput-object p1, p0, Lcom/pixelberrystudios/googleplay/a;->d:Landroid/app/Activity;

    .line 170
    return-void
.end method

.method static c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    sparse-switch p0, :sswitch_data_0

    .line 555
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 541
    :sswitch_0
    const-string/jumbo v0, "RESULT_OK"

    goto :goto_0

    .line 543
    :sswitch_1
    const-string/jumbo v0, "RESULT_CANCELED"

    goto :goto_0

    .line 545
    :sswitch_2
    const-string/jumbo v0, "RESULT_APP_MISCONFIGURED"

    goto :goto_0

    .line 547
    :sswitch_3
    const-string/jumbo v0, "RESULT_LEFT_ROOM"

    goto :goto_0

    .line 549
    :sswitch_4
    const-string/jumbo v0, "RESULT_LICENSE_FAILED"

    goto :goto_0

    .line 551
    :sswitch_5
    const-string/jumbo v0, "RESULT_RECONNECT_REQUIRED"

    goto :goto_0

    .line 553
    :sswitch_6
    const-string/jumbo v0, "SIGN_IN_FAILED"

    goto :goto_0

    .line 539
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x2711 -> :sswitch_5
        0x2712 -> :sswitch_6
        0x2713 -> :sswitch_4
        0x2714 -> :sswitch_2
        0x2715 -> :sswitch_3
    .end sparse-switch
.end method

.method static d(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 965
    packed-switch p0, :pswitch_data_0

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 967
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DEVELOPER_ERROR("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 969
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "INTERNAL_ERROR("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 971
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "INVALID_ACCOUNT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 973
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LICENSE_CHECK_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 975
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NETWORK_ERROR("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 977
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RESOLUTION_REQUIRED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 979
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SERVICE_DISABLED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 981
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SERVICE_INVALID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 983
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SERVICE_MISSING("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 985
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SERVICE_VERSION_UPDATE_REQUIRED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 987
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SIGN_IN_REQUIRED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 989
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SUCCESS("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/n;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->f:Lcom/google/android/gms/common/api/n;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No GoogleClient. Did you request it at setup?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->f:Lcom/google/android/gms/common/api/n;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 887
    const-string/jumbo v0, "onDisconnected."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 888
    iget v0, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 890
    const-string/jumbo v0, "onDisconnected is expected, so no action taken."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 904
    :goto_0
    return-void

    .line 895
    :cond_0
    const-string/jumbo v0, "Unexpectedly disconnected. Severing remaining connections."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->d(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->f()V

    .line 899
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->i:Lcom/pixelberrystudios/googleplay/c;

    .line 902
    const-string/jumbo v0, "Making extraordinary call to onSignInFailed callback"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 903
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->a(Z)V

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v3, 0x2329

    const/4 v2, 0x0

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityResult: req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne p1, v3, :cond_0

    const-string/jumbo v0, "RC_RESOLVE"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", resp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 566
    invoke-static {p2}, Lcom/pixelberrystudios/googleplay/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 567
    if-eq p1, v3, :cond_1

    .line 568
    const-string/jumbo v0, "onActivityResult: request code not meant for us. Ignoring."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 604
    :goto_1
    return-void

    .line 565
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 573
    :cond_1
    iput-boolean v2, p0, Lcom/pixelberrystudios/googleplay/a;->c:Z

    .line 575
    iget v0, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityResult: ignoring because state isn\'t STATE_CONNECTING (it\'s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/googleplay/a;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 583
    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 585
    const-string/jumbo v0, "onAR: Resolution was RESULT_OK, so connecting current client again."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->j()V

    goto :goto_1

    .line 587
    :cond_3
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_4

    .line 588
    const-string/jumbo v0, "onAR: Resolution was RECONNECT_REQUIRED, so reconnecting."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->j()V

    goto :goto_1

    .line 590
    :cond_4
    if-nez p2, :cond_5

    .line 592
    const-string/jumbo v0, "onAR: Got a cancellation result, so disconnecting."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 594
    iput-boolean v2, p0, Lcom/pixelberrystudios/googleplay/a;->g:Z

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->i:Lcom/pixelberrystudios/googleplay/c;

    .line 596
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->f()V

    .line 597
    invoke-virtual {p0, v2}, Lcom/pixelberrystudios/googleplay/a;->a(Z)V

    goto :goto_1

    .line 601
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAR: responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/pixelberrystudios/googleplay/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", so giving up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 602
    new-instance v0, Lcom/pixelberrystudios/googleplay/c;

    iget-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->h:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/pixelberrystudios/googleplay/c;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->a(Lcom/pixelberrystudios/googleplay/c;)V

    goto/16 :goto_1
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 3

    .prologue
    .line 343
    iput-object p1, p0, Lcom/pixelberrystudios/googleplay/a;->d:Landroid/app/Activity;

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStart, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/googleplay/a;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 346
    const-string/jumbo v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->a(Ljava/lang/String;)V

    .line 348
    iget v0, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStart: BUG: unexpected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/googleplay/a;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->e(Ljava/lang/String;)V

    .line 369
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :pswitch_0
    if-eqz p2, :cond_0

    .line 352
    const-string/jumbo v0, "onStart: Now connecting clients."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->i()V

    .line 371
    :goto_0
    return-void

    .line 355
    :cond_0
    const-string/jumbo v0, "onStart: Not connecting (user specifically signed out)."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :pswitch_1
    const-string/jumbo v0, "onStart: connection process in progress, no action taken."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :pswitch_2
    const-string/jumbo v0, "onStart: already connected (unusual, but ok)."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->m:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 755
    const-string/jumbo v0, "onConnected!"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 759
    if-eqz p1, :cond_1

    .line 760
    const-string/jumbo v0, "onConnected: connection hint provided. Checking for invite."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 761
    const-string/jumbo v0, "invitation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 762
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 764
    const-string/jumbo v1, "onConnected: connection hint has a room invite!"

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 765
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->l:Ljava/lang/String;

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invitation ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 769
    :cond_0
    const-string/jumbo v0, "onConnected: connection hint provided. Checking for TBMP game."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 771
    const-string/jumbo v0, "turn_based_match"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 773
    if-eqz v0, :cond_1

    .line 774
    iput-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->m:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .line 779
    :cond_1
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->k()V

    .line 780
    return-void
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .prologue
    .line 798
    const-string/jumbo v0, "onConnectionFailed"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 800
    iput-object p1, p0, Lcom/pixelberrystudios/googleplay/a;->h:Lcom/google/android/gms/common/ConnectionResult;

    .line 801
    const-string/jumbo v0, "Connection failure:"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "   - code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->h:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-static {v1}, Lcom/pixelberrystudios/googleplay/a;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "   - resolvable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->h:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "   - details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->h:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 806
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/a;->g:Z

    if-nez v0, :cond_0

    .line 813
    const-string/jumbo v0, "onConnectionFailed: since user didn\'t initiate sign-in, failing now."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 814
    iput-object p1, p0, Lcom/pixelberrystudios/googleplay/a;->h:Lcom/google/android/gms/common/ConnectionResult;

    .line 815
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->b(I)V

    .line 816
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->a(Z)V

    .line 827
    :goto_0
    return-void

    .line 820
    :cond_0
    const-string/jumbo v0, "onConnectionFailed: since user initiated sign-in, resolving problem."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->l()V

    goto :goto_0
.end method

.method public varargs a(Lcom/pixelberrystudios/googleplay/b;I[Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 246
    iget v1, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    if-eqz v1, :cond_0

    .line 247
    const-string/jumbo v0, "GameHelper: you called GameHelper.setup() twice. You can only call it once."

    .line 248
    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->e(Ljava/lang/String;)V

    .line 249
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    iput-object p1, p0, Lcom/pixelberrystudios/googleplay/a;->n:Lcom/pixelberrystudios/googleplay/b;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setup: requested clients: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 255
    new-instance v2, Lcom/google/android/gms/common/api/o;

    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1, p0, p0}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V

    .line 257
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 258
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 259
    const-string/jumbo v1, "https://www.googleapis.com/auth/games"

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v4, "https://www.googleapis.com/auth/games"

    invoke-direct {v1, v4}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/o;

    .line 262
    :cond_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    .line 263
    const-string/jumbo v1, "https://www.googleapis.com/auth/plus.login"

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v4, "https://www.googleapis.com/auth/plus.login"

    invoke-direct {v1, v4}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/o;

    .line 267
    :cond_2
    if-eqz p3, :cond_3

    .line 268
    array-length v4, p3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v5, p3, v1

    .line 269
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v6, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v6, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/o;

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->e:[Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->e:[Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 277
    const-string/jumbo v1, "setup: scopes:"

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->e:[Ljava/lang/String;

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v4, v1, v0

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :cond_4
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_5

    .line 283
    const-string/jumbo v0, "setup: creating GamesClient"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/google/android/gms/games/i;->b()Lcom/google/android/gms/games/j;

    move-result-object v0

    .line 288
    invoke-virtual {v0, v7, v7}, Lcom/google/android/gms/games/j;->a(ZI)Lcom/google/android/gms/games/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/j;->a()Lcom/google/android/gms/games/i;

    move-result-object v0

    .line 289
    const/16 v1, 0x31

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/o;->a(I)Lcom/google/android/gms/common/api/o;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/games/c;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/o;

    .line 292
    :cond_5
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_6

    .line 293
    const-string/jumbo v0, "setup: creating GamesPlusClient"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/google/android/gms/plus/e;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/o;

    .line 297
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/o;->b()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    iput-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->f:Lcom/google/android/gms/common/api/n;

    .line 298
    invoke-virtual {p0, v7}, Lcom/pixelberrystudios/googleplay/a;->b(I)V

    .line 299
    return-void
.end method

.method a(Lcom/pixelberrystudios/googleplay/c;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 874
    const/16 v0, 0x3ea

    const-string/jumbo v1, "giveUp"

    const-string/jumbo v2, "giveUp should only be called when connecting. Proceeding anyway."

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x2

    aput v4, v3, v5

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pixelberrystudios/googleplay/a;->a(ILjava/lang/String;Ljava/lang/String;[I)Z

    .line 876
    iput-boolean v5, p0, Lcom/pixelberrystudios/googleplay/a;->g:Z

    .line 878
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->f()V

    .line 879
    iput-object p1, p0, Lcom/pixelberrystudios/googleplay/a;->i:Lcom/pixelberrystudios/googleplay/c;

    .line 880
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->m()V

    .line 881
    invoke-virtual {p0, v5}, Lcom/pixelberrystudios/googleplay/a;->a(Z)V

    .line 882
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GameHelper error: Operation attempted without setup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ". The setup() method must be called before attempting any other operation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->e(Ljava/lang/String;)V

    .line 216
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/pixelberrystudios/googleplay/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 418
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    .prologue
    .line 400
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 402
    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 405
    :cond_0
    if-eqz p2, :cond_1

    .line 406
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 408
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 409
    if-eqz p3, :cond_2

    .line 410
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->d:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->showDialogAndMaintainImmersiveMode(Landroid/app/Dialog;Landroid/app/Activity;)V

    .line 413
    return-void
.end method

.method a(Ljava/lang/StringBuilder;B)V
    .locals 4

    .prologue
    .line 1099
    if-gez p2, :cond_0

    add-int/lit16 p2, p2, 0x100

    .line 1100
    :cond_0
    div-int/lit8 v0, p2, 0x10

    .line 1101
    rem-int/lit8 v1, p2, 0x10

    .line 1102
    const-string/jumbo v2, "0123456789ABCDEF"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    const-string/jumbo v0, "0123456789ABCDEF"

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    return-void
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Notifying LISTENER of sign-in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "SUCCESS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->n:Lcom/pixelberrystudios/googleplay/b;

    if-eqz v0, :cond_0

    .line 610
    if-eqz p1, :cond_3

    .line 611
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->n:Lcom/pixelberrystudios/googleplay/b;

    invoke-interface {v0}, Lcom/pixelberrystudios/googleplay/b;->b()V

    .line 616
    :cond_0
    :goto_1
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->i:Lcom/pixelberrystudios/googleplay/c;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FAILURE (error)"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "FAILURE (no error)"

    goto :goto_0

    .line 613
    :cond_3
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->n:Lcom/pixelberrystudios/googleplay/b;

    invoke-interface {v0}, Lcom/pixelberrystudios/googleplay/b;->a()V

    goto :goto_1
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 463
    iput-boolean p1, p0, Lcom/pixelberrystudios/googleplay/a;->j:Z

    .line 464
    iput-object p2, p0, Lcom/pixelberrystudios/googleplay/a;->k:Ljava/lang/String;

    .line 465
    if-eqz p1, :cond_0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Debug log enabled, tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 468
    :cond_0
    return-void
.end method

.method varargs a(ILjava/lang/String;Ljava/lang/String;[I)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    array-length v3, p4

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, p4, v2

    .line 177
    iget v5, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    if-ne v5, v4, :cond_0

    .line 208
    :goto_1
    return v0

    .line 176
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const/16 v3, 0x3e9

    if-ne p1, v3, :cond_2

    .line 183
    const-string/jumbo v3, "GameHelper: you attempted an operation at an invalid. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :goto_2
    const-string/jumbo v3, "Explanation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string/jumbo v3, "Operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string/jumbo v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/pixelberrystudios/googleplay/a;->a:[Ljava/lang/String;

    iget v5, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    array-length v3, p4

    if-ne v3, v0, :cond_3

    .line 198
    const-string/jumbo v0, "Expected state: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/pixelberrystudios/googleplay/a;->a:[Ljava/lang/String;

    aget v4, p4, v1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->d(Ljava/lang/String;)V

    move v0, v1

    .line 208
    goto :goto_1

    .line 185
    :cond_2
    const-string/jumbo v3, "GameHelper: BLERG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 200
    :cond_3
    const-string/jumbo v0, "Expected states:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    array-length v3, p4

    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_4

    aget v4, p4, v0

    .line 202
    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/pixelberrystudios/googleplay/a;->a:[Ljava/lang/String;

    aget-object v4, v6, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 204
    :cond_4
    const-string/jumbo v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method b(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 946
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 946
    return-object v0
.end method

.method b(I)V
    .locals 4

    .prologue
    .line 302
    sget-object v0, Lcom/pixelberrystudios/googleplay/a;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    aget-object v0, v0, v1

    .line 303
    sget-object v1, Lcom/pixelberrystudios/googleplay/a;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 304
    iput p1, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "State change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 322
    iget v0, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 951
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/a;->j:Z

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GameHelper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->i:Lcom/pixelberrystudios/googleplay/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStop, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/googleplay/a;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 376
    const-string/jumbo v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->a(Ljava/lang/String;)V

    .line 377
    iget v0, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStop: BUG: unexpected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/googleplay/a;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->e(Ljava/lang/String;)V

    .line 390
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :pswitch_0
    const-string/jumbo v0, "onStop: Killing connections"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->f()V

    .line 394
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->d:Landroid/app/Activity;

    .line 395
    return-void

    .line 385
    :pswitch_1
    const-string/jumbo v0, "onStop: not connected, so no action taken."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 957
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "!!! GameHelper WARNING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 498
    iget v0, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 500
    const-string/jumbo v0, "signOut: state was already DISCONNECTED, ignoring."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 515
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->f:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->f:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    const-string/jumbo v0, "Signing out from GamesClient."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->f:Lcom/google/android/gms/common/api/n;

    invoke-static {v0}, Lcom/google/android/gms/games/c;->c(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/u;

    .line 513
    :cond_1
    const-string/jumbo v0, "Proceeding with disconnection."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->f()V

    goto :goto_0
.end method

.method e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 961
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "*** GameHelper ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-void
.end method

.method f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 518
    const/16 v0, 0x3ea

    const-string/jumbo v1, "killConnections"

    const-string/jumbo v2, "killConnections() should only get called while connected or connecting."

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pixelberrystudios/googleplay/a;->a(ILjava/lang/String;Ljava/lang/String;[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 523
    :cond_0
    const-string/jumbo v0, "killConnections: killing connections."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 525
    iput-object v4, p0, Lcom/pixelberrystudios/googleplay/a;->h:Lcom/google/android/gms/common/ConnectionResult;

    .line 526
    iput-object v4, p0, Lcom/pixelberrystudios/googleplay/a;->i:Lcom/pixelberrystudios/googleplay/c;

    .line 528
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->f:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->f:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    const-string/jumbo v0, "Disconnecting GamesClient."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->f:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->g()V

    .line 534
    :cond_1
    const-string/jumbo v0, "killConnections: all clients disconnected."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 535
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->b(I)V

    goto :goto_0

    .line 518
    :array_0
    .array-data 4
        0x3
        0x2
    .end array-data
.end method

.method public g()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 625
    iget v0, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 627
    const-string/jumbo v0, "beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->d(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0, v4}, Lcom/pixelberrystudios/googleplay/a;->a(Z)V

    .line 676
    :goto_0
    return-void

    .line 631
    :cond_0
    iget v0, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    if-ne v0, v5, :cond_1

    .line 632
    const-string/jumbo v0, "beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it\'s clicked, and re-enable when you get the callback."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_1
    const-string/jumbo v0, "Starting USER-INITIATED sign-in flow."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 649
    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v0

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isGooglePlayServicesAvailable returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 651
    if-eqz v0, :cond_2

    .line 653
    const-string/jumbo v1, "Google Play services not available. Show error dialog."

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 654
    new-instance v1, Lcom/pixelberrystudios/googleplay/c;

    invoke-direct {v1, v0, v3}, Lcom/pixelberrystudios/googleplay/c;-><init>(II)V

    iput-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->i:Lcom/pixelberrystudios/googleplay/c;

    .line 655
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->m()V

    .line 656
    invoke-virtual {p0, v3}, Lcom/pixelberrystudios/googleplay/a;->a(Z)V

    goto :goto_0

    .line 663
    :cond_2
    iput-boolean v4, p0, Lcom/pixelberrystudios/googleplay/a;->g:Z

    .line 665
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->h:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_3

    .line 668
    const-string/jumbo v0, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0, v5}, Lcom/pixelberrystudios/googleplay/a;->b(I)V

    .line 670
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->l()V

    goto :goto_0

    .line 673
    :cond_3
    const-string/jumbo v0, "beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->i()V

    goto :goto_0
.end method

.method h()Landroid/content/Context;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->d:Landroid/app/Activity;

    return-object v0
.end method

.method i()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 692
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/PermissionsHelper;->areGCPermissionsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 693
    const-string/jumbo v0, "Can\'t connect to Google because the necessary permissions are disabled"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->d(Ljava/lang/String;)V

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    const/16 v0, 0x3ea

    const-string/jumbo v1, "startConnections"

    const-string/jumbo v2, "startConnections should only get called when disconnected."

    new-array v3, v5, [I

    const/4 v4, 0x0

    aput v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pixelberrystudios/googleplay/a;->a(ILjava/lang/String;Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    const-string/jumbo v0, "Starting connections."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->b(I)V

    .line 703
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->l:Ljava/lang/String;

    .line 704
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->j()V

    goto :goto_0
.end method

.method j()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 708
    iget v0, p0, Lcom/pixelberrystudios/googleplay/a;->b:I

    if-ne v0, v3, :cond_1

    .line 710
    const-string/jumbo v0, "GameHelper got disconnected during connection process. Aborting."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->d(Ljava/lang/String;)V

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    const/16 v0, 0x3ea

    const-string/jumbo v1, "connectCurrentClient"

    const-string/jumbo v2, "connectCurrentClient should only get called when connecting."

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pixelberrystudios/googleplay/a;->a(ILjava/lang/String;Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->f:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->e()V

    goto :goto_0
.end method

.method k()V
    .locals 4

    .prologue
    .line 783
    const/16 v0, 0x3ea

    const-string/jumbo v1, "succeedSignIn"

    const-string/jumbo v2, "succeedSignIn should only get called in the connecting or connected state. Proceeding anyway."

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pixelberrystudios/googleplay/a;->a(ILjava/lang/String;Ljava/lang/String;[I)Z

    .line 786
    const-string/jumbo v0, "All requested clients connected. Sign-in succeeded!"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 787
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->b(I)V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->i:Lcom/pixelberrystudios/googleplay/c;

    .line 790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pixelberrystudios/googleplay/a;->g:Z

    .line 791
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->a(Z)V

    .line 792
    return-void

    .line 783
    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method l()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 836
    const/16 v0, 0x3ea

    const-string/jumbo v1, "resolveConnectionResult"

    const-string/jumbo v2, "resolveConnectionResult should only be called when connecting. Proceeding anyway."

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pixelberrystudios/googleplay/a;->a(ILjava/lang/String;Ljava/lang/String;[I)Z

    .line 839
    iget-boolean v0, p0, Lcom/pixelberrystudios/googleplay/a;->c:Z

    if-eqz v0, :cond_0

    .line 840
    const-string/jumbo v0, "We\'re already expecting the result of a previous resolution."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 864
    :goto_0
    return-void

    .line 844
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resolveConnectionResult: trying to resolve result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->h:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->h:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    const-string/jumbo v0, "Result has resolution. Starting it."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 851
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/pixelberrystudios/googleplay/a;->c:Z

    .line 852
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->h:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->d:Landroid/app/Activity;

    const/16 v2, 0x2329

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 853
    :catch_0
    move-exception v0

    .line 855
    const-string/jumbo v0, "SendIntentException, so connecting again."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->j()V

    goto :goto_0

    .line 861
    :cond_1
    const-string/jumbo v0, "resolveConnectionResult: result has no resolution. Giving up."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 862
    new-instance v0, Lcom/pixelberrystudios/googleplay/c;

    iget-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->h:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/pixelberrystudios/googleplay/c;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->a(Lcom/pixelberrystudios/googleplay/c;)V

    goto :goto_0
.end method

.method m()V
    .locals 5

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->h()Landroid/content/Context;

    move-result-object v1

    .line 909
    if-nez v1, :cond_0

    .line 910
    const-string/jumbo v0, "*** No context. Can\'t show failure dialog."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 943
    :goto_0
    return-void

    .line 913
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Making error dialog for failure: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pixelberrystudios/googleplay/a;->i:Lcom/pixelberrystudios/googleplay/c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->i:Lcom/pixelberrystudios/googleplay/c;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/c;->a()I

    move-result v2

    .line 916
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->i:Lcom/pixelberrystudios/googleplay/c;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/c;->b()I

    move-result v0

    .line 918
    packed-switch v0, :pswitch_data_0

    .line 932
    iget-object v0, p0, Lcom/pixelberrystudios/googleplay/a;->d:Landroid/app/Activity;

    const/16 v3, 0x232a

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 933
    if-nez v0, :cond_1

    .line 935
    const-string/jumbo v0, "No standard error dialog available. Making fallback dialog."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0800e7

    .line 937
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/pixelberrystudios/googleplay/a;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 936
    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->b(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 941
    :cond_1
    :goto_1
    const-string/jumbo v1, "Showing error dialog."

    invoke-virtual {p0, v1}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 942
    iget-object v1, p0, Lcom/pixelberrystudios/googleplay/a;->d:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->showDialogAndMaintainImmersiveMode(Landroid/app/Dialog;Landroid/app/Activity;)V

    goto :goto_0

    .line 920
    :pswitch_0
    const v0, 0x7f0800e4

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->b(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 921
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->n()V

    goto :goto_1

    .line 924
    :pswitch_1
    const v0, 0x7f0800e6

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->b(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 927
    :pswitch_2
    const v0, 0x7f0800e5

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->b(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 918
    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method n()V
    .locals 2

    .prologue
    .line 1027
    const-string/jumbo v0, "****"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1028
    const-string/jumbo v0, "****"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1029
    const-string/jumbo v0, "**** APP NOT CORRECTLY CONFIGURED TO USE GOOGLE PLAY GAME SERVICES"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1030
    const-string/jumbo v0, "**** This is usually caused by one of these reasons:"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1031
    const-string/jumbo v0, "**** (1) Your package name and certificate fingerprint do not match"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1032
    const-string/jumbo v0, "****     the client ID you registered in Developer Console."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1033
    const-string/jumbo v0, "**** (2) Your App ID was incorrectly entered."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1034
    const-string/jumbo v0, "**** (3) Your game settings have not been published and you are "

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1035
    const-string/jumbo v0, "****     trying to log in with an account that is not listed as"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1036
    const-string/jumbo v0, "****     a test account."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1037
    const-string/jumbo v0, "****"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 1039
    if-nez v0, :cond_0

    .line 1040
    const-string/jumbo v0, "*** (no Context, so can\'t print more debug info)"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1056
    :goto_0
    return-void

    .line 1044
    :cond_0
    const-string/jumbo v0, "**** To help you debug, here is the information about this app"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "**** Package name         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "**** Cert SHA1 fingerprint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "**** App ID from          : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1048
    const-string/jumbo v0, "****"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1049
    const-string/jumbo v0, "**** Check that the above information matches your setup in "

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1050
    const-string/jumbo v0, "**** Developer Console. Also, check that you\'re logging in with the"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1051
    const-string/jumbo v0, "**** right account (it should be listed in the Testers section if"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1052
    const-string/jumbo v0, "**** your project is not yet published)."

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1053
    const-string/jumbo v0, "****"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v0, "**** For more information, refer to the troubleshooting guide:"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    .line 1055
    const-string/jumbo v0, "****   http://developers.google.com/games/services/android/troubleshooting"

    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/googleplay/a;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1060
    :try_start_0
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1061
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1062
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1063
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1066
    :goto_0
    return-object v0

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1066
    const-string/jumbo v0, "??? (failed to retrieve APP ID)"

    goto :goto_0
.end method

.method p()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1072
    :try_start_0
    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pixelberrystudios/googleplay/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1074
    array-length v2, v1

    if-nez v2, :cond_0

    .line 1075
    const-string/jumbo v0, "ERROR: NO SIGNATURE."

    .line 1094
    :goto_0
    return-object v0

    .line 1076
    :cond_0
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1077
    const-string/jumbo v0, "ERROR: MULTIPLE SIGNATURES"

    goto :goto_0

    .line 1079
    :cond_1
    const-string/jumbo v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 1082
    if-lez v0, :cond_2

    .line 1083
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    :cond_2
    aget-byte v3, v1, v0

    invoke-virtual {p0, v2, v3}, Lcom/pixelberrystudios/googleplay/a;->a(Ljava/lang/StringBuilder;B)V

    .line 1081
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1087
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1091
    const-string/jumbo v0, "(ERROR: package not found)"

    goto :goto_0

    .line 1092
    :catch_1
    move-exception v0

    .line 1093
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1094
    const-string/jumbo v0, "(ERROR: SHA1 algorithm not found)"

    goto :goto_0
.end method
