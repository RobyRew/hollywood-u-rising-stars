.class public final Lcom/helpshift/ea;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/helpshift/al;

.field private static b:Lcom/helpshift/dx;

.field private static c:Landroid/content/Context;

.field private static d:Lcom/helpshift/eg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    sput-object v0, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    .line 152
    sput-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    .line 153
    sput-object v0, Lcom/helpshift/ea;->c:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/helpshift/eg;
    .locals 1

    .prologue
    .line 1201
    sget-object v0, Lcom/helpshift/ea;->d:Lcom/helpshift/eg;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 583
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/helpshift/ea;->a(Landroid/app/Activity;Ljava/util/HashMap;)V

    .line 584
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 748
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/helpshift/HSSection;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 749
    invoke-static {p2}, Lcom/helpshift/ea;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/ea;->c(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 750
    const-string/jumbo v1, "sectionPublishId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    const-string/jumbo v1, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/e/c;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 752
    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 753
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 754
    invoke-static {}, Lcom/helpshift/e/c;->b()V

    .line 755
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 756
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 653
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/helpshift/HSConversation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 654
    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 655
    invoke-static {p1}, Lcom/helpshift/ea;->c(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 656
    const-string/jumbo v1, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/e/c;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 657
    const-string/jumbo v1, "chatLaunchSource"

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 659
    invoke-static {}, Lcom/helpshift/e/c;->b()V

    .line 660
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 661
    return-void
.end method

.method private static a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/ea;->b(Landroid/content/Context;)V

    .line 160
    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/helpshift/ea;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 233
    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5

    .prologue
    .line 272
    invoke-static {p0}, Lcom/helpshift/ea;->a(Landroid/app/Application;)V

    .line 273
    invoke-static {}, Lcom/helpshift/ea;->c()V

    .line 274
    if-nez p4, :cond_0

    .line 275
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 278
    :cond_0
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v1

    .line 280
    const-string/jumbo v0, "sdkType"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 281
    sget-object v2, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    const-string/jumbo v0, "sdkType"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/helpshift/dx;->o(Ljava/lang/String;)V

    .line 286
    :goto_0
    const-string/jumbo v0, "notificationIcon"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_1

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 289
    check-cast v0, Ljava/lang/String;

    .line 290
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "drawable"

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 293
    const-string/jumbo v2, "notificationIcon"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_1
    :try_start_0
    sget-object v0, Lcom/helpshift/ea;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcom/helpshift/ea;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 300
    sget-object v2, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v2}, Lcom/helpshift/dx;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 301
    sget-object v2, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    invoke-virtual {v2}, Lcom/helpshift/al;->i()V

    .line 302
    sget-object v2, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    invoke-virtual {v2}, Lcom/helpshift/al;->j()V

    .line 303
    sget-object v2, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v2, v0}, Lcom/helpshift/dx;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_2
    :goto_1
    sget-object v0, Lcom/helpshift/ea;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/helpshift/d/a/b;->a(Landroid/content/Context;)V

    .line 310
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/helpshift/dx;->c(Lorg/json/JSONObject;)V

    .line 312
    sget-object v0, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    invoke-virtual {v0, p1, p2, p3}, Lcom/helpshift/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 316
    :try_start_1
    sget-object v0, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/al;->c(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    :cond_3
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    .line 323
    invoke-static {}, Lcom/helpshift/bs;->a()Lcom/helpshift/bs;

    move-result-object v0

    .line 325
    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 326
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 353
    :goto_3
    return-void

    .line 283
    :cond_4
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v2}, Lcom/helpshift/dx;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Application Name Not Found"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 317
    :catch_1
    move-exception v0

    .line 318
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Install - Get Latest Issues"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 328
    :cond_5
    sget-object v0, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->h()V

    .line 329
    sget-object v0, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 330
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/helpshift/ea;->c:Landroid/content/Context;

    const-class v2, Lcom/helpshift/HSReview;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 332
    sget-object v1, Lcom/helpshift/ea;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 336
    :cond_6
    :try_start_2
    sget-object v0, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    new-instance v1, Lcom/helpshift/eb;

    invoke-direct {v1}, Lcom/helpshift/eb;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/al;->b(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 346
    :goto_4
    sget-object v0, Lcom/helpshift/ea;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/helpshift/eh;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 347
    sget-object v0, Lcom/helpshift/ea;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/helpshift/ea;->c:Landroid/content/Context;

    const-class v3, Lcom/helpshift/HSRetryService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 350
    :cond_7
    sget-object v0, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->t()V

    .line 351
    sget-object v0, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->d()V

    goto :goto_3

    .line 342
    :catch_2
    move-exception v0

    .line 343
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/ea;->b(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 521
    invoke-static {p0}, Lcom/helpshift/ea;->a(Landroid/content/Context;)V

    .line 522
    if-eqz p1, :cond_1

    .line 523
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v0

    .line 524
    sget-object v1, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v1, p1}, Lcom/helpshift/dx;->k(Ljava/lang/String;)V

    .line 526
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    sget-object v0, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->o()V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    const-string/jumbo v0, "HelpShiftDebug"

    const-string/jumbo v1, "Device Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 5

    .prologue
    .line 397
    if-eqz p0, :cond_0

    .line 398
    sget-object v0, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->g()Ljava/lang/Integer;

    move-result-object v0

    .line 399
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 400
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 401
    const-string/jumbo v3, "value"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 402
    const-string/jumbo v0, "cache"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 403
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 404
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 406
    new-instance v0, Lcom/helpshift/ec;

    invoke-direct {v0, p1}, Lcom/helpshift/ec;-><init>(Landroid/os/Handler;)V

    .line 417
    sget-object v1, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 420
    sget-object v1, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    invoke-virtual {v1, p0, v0}, Lcom/helpshift/al;->e(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 423
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 424
    const-string/jumbo v3, "value"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 426
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static a(Lcom/helpshift/bj;)V
    .locals 3

    .prologue
    .line 875
    invoke-static {p0}, Lcom/helpshift/e/aj;->a(Lcom/helpshift/bj;)V

    .line 877
    :try_start_0
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-static {}, Lcom/helpshift/e/aj;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->f(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :goto_0
    return-void

    .line 878
    :catch_0
    move-exception v0

    .line 879
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception getting custom meta "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 546
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v0, p0}, Lcom/helpshift/dx;->r(Ljava/lang/String;)V

    .line 550
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/HashMap;)V
    .locals 1

    .prologue
    .line 884
    .line 885
    const-string/jumbo v0, "hs-custom-metadata"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    new-instance v0, Lcom/helpshift/ed;

    invoke-direct {v0, p0}, Lcom/helpshift/ed;-><init>(Ljava/util/HashMap;)V

    .line 897
    invoke-static {v0}, Lcom/helpshift/ea;->a(Lcom/helpshift/bj;)V

    .line 899
    :cond_0
    return-void
.end method

.method static synthetic b()Lcom/helpshift/dx;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    return-object v0
.end method

.method private static b(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 987
    if-nez p0, :cond_0

    .line 988
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 991
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "conversationPrefillText"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string/jumbo v3, "showSearchOnNewConversation"

    aput-object v3, v2, v0

    .line 992
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 993
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    const-string/jumbo v5, "showSearchOnNewConversation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 996
    sget-object v4, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/helpshift/dx;->g(Ljava/lang/Boolean;)V

    .line 992
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 999
    :cond_2
    return-object p0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 841
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/helpshift/HSQuestion;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 842
    invoke-static {p2}, Lcom/helpshift/ea;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/ea;->c(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 843
    const-string/jumbo v1, "questionPublishId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const-string/jumbo v1, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/e/c;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 845
    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 846
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 847
    invoke-static {}, Lcom/helpshift/e/c;->b()V

    .line 848
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 849
    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 3

    .prologue
    .line 977
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/helpshift/HSFaqs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 978
    invoke-static {p1}, Lcom/helpshift/ea;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/ea;->c(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 979
    const-string/jumbo v1, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/e/c;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 980
    const-string/jumbo v1, "decomp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 981
    const-string/jumbo v1, "isRoot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 982
    invoke-static {}, Lcom/helpshift/e/c;->b()V

    .line 983
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 984
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/helpshift/ea;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/helpshift/al;

    invoke-direct {v0, p0}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    .line 169
    sget-object v0, Lcom/helpshift/ea;->a:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    sput-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    .line 170
    invoke-static {p0}, Lcom/helpshift/a;->a(Landroid/content/Context;)V

    .line 171
    invoke-static {p0}, Lcom/helpshift/ej;->a(Landroid/content/Context;)V

    .line 172
    sput-object p0, Lcom/helpshift/ea;->c:Landroid/content/Context;

    .line 174
    :cond_0
    return-void
.end method

.method private static c(Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1003
    invoke-static {p0}, Lcom/helpshift/a;->a(Ljava/util/HashMap;)V

    .line 1004
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1005
    if-eqz p0, :cond_7

    .line 1006
    invoke-static {p0}, Lcom/helpshift/ea;->a(Ljava/util/HashMap;)V

    .line 1007
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1008
    const-string/jumbo v4, "gotoCoversationAfterContactUs"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "gotoConversationAfterContactUs"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1011
    :try_start_0
    const-string/jumbo v0, "requireEmail"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1012
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    const-string/jumbo v5, "requireEmail"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/helpshift/dx;->d(Ljava/lang/Boolean;)V

    .line 1014
    :cond_1
    const-string/jumbo v0, "hideNameAndEmail"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1015
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    const-string/jumbo v5, "hideNameAndEmail"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/helpshift/dx;->f(Ljava/lang/Boolean;)V

    .line 1017
    :cond_2
    const-string/jumbo v0, "showSearchOnNewConversation"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1018
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    const-string/jumbo v5, "showSearchOnNewConversation"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/helpshift/dx;->g(Ljava/lang/Boolean;)V

    .line 1020
    :cond_3
    const-string/jumbo v0, "enableFullPrivacy"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1021
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    const-string/jumbo v5, "enableFullPrivacy"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/helpshift/dx;->e(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :cond_4
    :goto_1
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/helpshift/dx;->z(Ljava/lang/String;)V

    .line 1032
    :try_start_1
    const-string/jumbo v0, "conversationPrefillText"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "conversationPrefillText"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "null"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1039
    const-string/jumbo v0, "hs-custom-metadata"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1040
    const-string/jumbo v0, "dropMeta"

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1043
    :cond_5
    const-string/jumbo v0, "conversationPrefillText"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1044
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1045
    sget-object v5, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v5, v0}, Lcom/helpshift/dx;->z(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1052
    :cond_6
    :goto_2
    const-string/jumbo v0, "showConvOnReportIssue"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1055
    const-string/jumbo v0, "showSearchOnNewConversation"

    const-string/jumbo v4, "showSearchOnNewConversation"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1060
    :cond_7
    return-object v2

    :cond_8
    move v0, v1

    .line 1008
    goto/16 :goto_0

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    const-string/jumbo v5, "HelpShiftDebug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception parsing config : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1048
    :catch_1
    move-exception v0

    .line 1049
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "JSON exception while parsing config : "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static c()V
    .locals 10

    .prologue
    .line 181
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->T()Ljava/lang/String;

    move-result-object v1

    .line 184
    sget-object v2, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v2}, Lcom/helpshift/dx;->X()Ljava/lang/Boolean;

    move-result-object v2

    .line 185
    sget-object v3, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v3}, Lcom/helpshift/dx;->Y()Ljava/lang/Boolean;

    move-result-object v3

    .line 186
    sget-object v4, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v4}, Lcom/helpshift/dx;->ab()Ljava/lang/Boolean;

    move-result-object v4

    .line 187
    sget-object v5, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v5}, Lcom/helpshift/dx;->ad()Ljava/lang/Boolean;

    move-result-object v5

    .line 188
    sget-object v6, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v6}, Lcom/helpshift/dx;->Z()Lorg/json/JSONObject;

    move-result-object v6

    .line 190
    sget-object v7, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v7}, Lcom/helpshift/dx;->S()Ljava/lang/Float;

    move-result-object v7

    .line 191
    sget-object v8, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v8}, Lcom/helpshift/dx;->q()Ljava/lang/String;

    move-result-object v8

    .line 193
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    const-string/jumbo v9, "3.7.1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 195
    sget-object v8, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v8}, Lcom/helpshift/dx;->h()V

    .line 197
    sget-object v8, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v8, v0}, Lcom/helpshift/dx;->d(Ljava/lang/String;)V

    .line 198
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->x(Ljava/lang/String;)V

    .line 202
    :cond_0
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v0, v2}, Lcom/helpshift/dx;->d(Ljava/lang/Boolean;)V

    .line 203
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v0, v3}, Lcom/helpshift/dx;->e(Ljava/lang/Boolean;)V

    .line 204
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v0, v4}, Lcom/helpshift/dx;->f(Ljava/lang/Boolean;)V

    .line 205
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v0, v5}, Lcom/helpshift/dx;->g(Ljava/lang/Boolean;)V

    .line 206
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v0, v6}, Lcom/helpshift/dx;->f(Lorg/json/JSONObject;)V

    .line 208
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    invoke-virtual {v0, v7}, Lcom/helpshift/dx;->a(Ljava/lang/Float;)V

    .line 210
    :cond_1
    sget-object v0, Lcom/helpshift/ea;->b:Lcom/helpshift/dx;

    const-string/jumbo v1, "3.7.1"

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->m(Ljava/lang/String;)V

    .line 211
    return-void
.end method
