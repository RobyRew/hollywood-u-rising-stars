.class public Lcom/helpshift/bu;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/helpshift/widget/b;


# instance fields
.field private A:Landroid/widget/ImageButton;

.field private B:Landroid/widget/Button;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Landroid/view/MenuItem;

.field private G:Landroid/view/ViewStub;

.field private H:Landroid/widget/TextView;

.field private I:Lcom/helpshift/widget/CSATView;

.field private J:Z

.field private K:Landroid/os/Handler;

.field private L:Landroid/os/Handler;

.field private M:Landroid/os/Handler;

.field private N:Landroid/os/Handler;

.field private final a:Landroid/content/BroadcastReceiver;

.field private final b:Landroid/content/BroadcastReceiver;

.field private c:Lcom/helpshift/m;

.field private d:Landroid/os/Bundle;

.field private e:Ljava/lang/String;

.field private f:Lcom/helpshift/a/a;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/ListView;

.field private i:Lcom/helpshift/dx;

.field private j:Lcom/helpshift/ai;

.field private k:Lcom/helpshift/al;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final o:I

.field private p:Ljava/lang/Thread;

.field private q:Landroid/os/Handler;

.field private r:Ljava/lang/Boolean;

.field private s:Ljava/lang/Boolean;

.field private t:Ljava/lang/Boolean;

.field private u:Z

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    new-instance v0, Lcom/helpshift/bv;

    invoke-direct {v0, p0}, Lcom/helpshift/bv;-><init>(Lcom/helpshift/bu;)V

    iput-object v0, p0, Lcom/helpshift/bu;->a:Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v0, Lcom/helpshift/cg;

    invoke-direct {v0, p0}, Lcom/helpshift/cg;-><init>(Lcom/helpshift/bu;)V

    iput-object v0, p0, Lcom/helpshift/bu;->b:Landroid/content/BroadcastReceiver;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/helpshift/bu;->m:Ljava/util/HashSet;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/helpshift/bu;->n:Ljava/util/HashSet;

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/helpshift/bu;->o:I

    .line 82
    iput-boolean v1, p0, Lcom/helpshift/bu;->u:Z

    .line 90
    iput-boolean v1, p0, Lcom/helpshift/bu;->C:Z

    .line 91
    iput-boolean v2, p0, Lcom/helpshift/bu;->D:Z

    .line 92
    iput-boolean v2, p0, Lcom/helpshift/bu;->E:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/bu;->I:Lcom/helpshift/widget/CSATView;

    .line 97
    iput-boolean v1, p0, Lcom/helpshift/bu;->J:Z

    .line 107
    new-instance v0, Lcom/helpshift/ci;

    invoke-direct {v0, p0}, Lcom/helpshift/ci;-><init>(Lcom/helpshift/bu;)V

    iput-object v0, p0, Lcom/helpshift/bu;->K:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/helpshift/cj;

    invoke-direct {v0, p0}, Lcom/helpshift/cj;-><init>(Lcom/helpshift/bu;)V

    iput-object v0, p0, Lcom/helpshift/bu;->L:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/helpshift/ck;

    invoke-direct {v0, p0}, Lcom/helpshift/ck;-><init>(Lcom/helpshift/bu;)V

    iput-object v0, p0, Lcom/helpshift/bu;->M:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcom/helpshift/cl;

    invoke-direct {v0, p0}, Lcom/helpshift/cl;-><init>(Lcom/helpshift/bu;)V

    iput-object v0, p0, Lcom/helpshift/bu;->N:Landroid/os/Handler;

    .line 1152
    return-void
.end method

.method static synthetic a(Lcom/helpshift/bu;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/helpshift/bu;->q:Landroid/os/Handler;

    return-object p1
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    const/16 v4, 0x1c

    const/4 v3, 0x6

    const/4 v5, -0x2

    const/4 v1, 0x0

    .line 558
    iget-object v0, p0, Lcom/helpshift/bu;->B:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 563
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 564
    invoke-direct {p0, v4}, Lcom/helpshift/bu;->e(I)I

    move-result v3

    .line 565
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/helpshift/bu;->e(I)I

    move-result v2

    .line 566
    invoke-direct {p0, v4}, Lcom/helpshift/bu;->e(I)I

    move-result v0

    .line 573
    :goto_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 575
    invoke-virtual {v4, v1, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 576
    iget-object v2, p0, Lcom/helpshift/bu;->B:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    iget-object v2, p0, Lcom/helpshift/bu;->I:Lcom/helpshift/widget/CSATView;

    if-eqz v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/helpshift/bu;->I:Lcom/helpshift/widget/CSATView;

    invoke-virtual {v2, v1, v0, v1, v1}, Lcom/helpshift/widget/CSATView;->a(IIII)V

    .line 582
    :cond_0
    return-void

    .line 568
    :cond_1
    invoke-direct {p0, v3}, Lcom/helpshift/bu;->e(I)I

    move-result v2

    .line 569
    invoke-direct {p0, v3}, Lcom/helpshift/bu;->e(I)I

    move-result v0

    move v3, v2

    move v2, v0

    move v0, v1

    .line 570
    goto :goto_0
.end method

.method private a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->b(Ljava/lang/Boolean;)V

    .line 1236
    const-string/jumbo v0, "ar"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    sget-object v1, Lcom/helpshift/bi;->a:Lcom/helpshift/bi;

    invoke-virtual {v0, p3, v1}, Lcom/helpshift/al;->a(Ljava/lang/String;Lcom/helpshift/bi;)Ljava/lang/Boolean;

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    return-void
.end method

.method private a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->b(Ljava/lang/Boolean;)V

    .line 1255
    const-string/jumbo v0, "ar"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    sget-object v1, Lcom/helpshift/bi;->a:Lcom/helpshift/bi;

    invoke-virtual {v0, p3, v1}, Lcom/helpshift/al;->a(Ljava/lang/String;Lcom/helpshift/bi;)Ljava/lang/Boolean;

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1265
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 134
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 135
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 136
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    iget-object v2, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    invoke-direct {p0}, Lcom/helpshift/bu;->h()V

    .line 145
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 279
    iget-object v0, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/helpshift/m;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 281
    return-void
.end method

.method static synthetic a(Lcom/helpshift/bu;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/helpshift/bu;->h()V

    return-void
.end method

.method static synthetic a(Lcom/helpshift/bu;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p6}, Lcom/helpshift/bu;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/helpshift/bu;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/helpshift/bu;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/helpshift/bu;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/helpshift/bu;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/helpshift/bu;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/helpshift/bu;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/helpshift/bu;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/helpshift/bu;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 7

    .prologue
    .line 738
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    iget-object v1, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->a(Ljava/lang/String;)V

    .line 741
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 742
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    const-string/jumbo v1, ""

    .line 744
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    const-string/jumbo v1, "y"

    invoke-static {v1, v0}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 746
    const-string/jumbo v5, "ca"

    .line 751
    :goto_0
    iget-object v1, p0, Lcom/helpshift/bu;->M:Landroid/os/Handler;

    iget-object v2, p0, Lcom/helpshift/bu;->N:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/bu;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    sget-object v2, Lcom/helpshift/bi;->b:Lcom/helpshift/bi;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/al;->a(Ljava/lang/String;Lcom/helpshift/bi;)Ljava/lang/Boolean;

    .line 758
    :goto_1
    return-void

    .line 748
    :cond_0
    const-string/jumbo v1, "n"

    invoke-static {v1, v0}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 749
    const-string/jumbo v5, "ncr"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 16

    .prologue
    .line 295
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/helpshift/bu;->m:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/helpshift/bu;->n:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 298
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 300
    const/4 v1, 0x0

    move v12, v1

    :goto_0
    if-ge v12, v13, :cond_2

    .line 302
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 303
    const-string/jumbo v1, "id"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    const-string/jumbo v1, "type"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    const-string/jumbo v1, "origin"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 306
    const-string/jumbo v1, "body"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    const-string/jumbo v1, "created_at"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 308
    const-string/jumbo v1, "state"

    const/4 v7, 0x0

    invoke-virtual {v14, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 309
    const-string/jumbo v1, "inProgress"

    const/4 v7, 0x0

    invoke-virtual {v14, v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 311
    const-string/jumbo v1, "mobile"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ncr"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/helpshift/bu;->D:Z

    if-nez v1, :cond_1

    add-int/lit8 v1, v13, -0x1

    if-ne v12, v1, :cond_1

    .line 300
    :cond_0
    :goto_1
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_0

    .line 317
    :cond_1
    const-string/jumbo v8, ""

    .line 318
    const-string/jumbo v1, "rsc"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 319
    const-string/jumbo v1, "screenshot"

    const-string/jumbo v7, ""

    invoke-virtual {v14, v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 320
    const-string/jumbo v1, "localRscMessage_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/helpshift/bu;->n:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 387
    :catch_0
    move-exception v1

    .line 388
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "Slug in get(\"slug\") no found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/helpshift/bu;->f:Lcom/helpshift/a/a;

    invoke-virtual {v1}, Lcom/helpshift/a/a;->notifyDataSetChanged()V

    .line 394
    :cond_3
    return-void

    .line 327
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 328
    const-string/jumbo v7, "meta"

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 330
    if-eqz v7, :cond_5

    .line 331
    const-string/jumbo v11, "response"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 332
    if-eqz v7, :cond_5

    .line 333
    const-string/jumbo v1, "state"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 337
    :cond_5
    const-string/jumbo v11, ""

    .line 338
    const-string/jumbo v7, "author"

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 339
    if-eqz v7, :cond_6

    .line 340
    const-string/jumbo v11, "name"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 343
    :cond_6
    const-string/jumbo v7, "invisible"

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_7
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 345
    const-string/jumbo v1, "mobile"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "ca"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/helpshift/bu;->m:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/helpshift/bu;->m:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/helpshift/g/a;

    invoke-direct/range {v1 .. v11}, Lcom/helpshift/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    const-string/jumbo v1, "sc"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const-string/jumbo v1, "meta"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 354
    if-eqz v1, :cond_0

    .line 355
    const-string/jumbo v3, "attachments"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 357
    const-string/jumbo v4, "refers"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    const-string/jumbo v4, "localRscMessage_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/bu;->m:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 361
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/helpshift/bu;->c(Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_9
    :goto_3
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_c

    if-eqz v1, :cond_c

    .line 370
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 371
    if-eqz v2, :cond_0

    .line 372
    const-string/jumbo v3, "url"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 374
    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string/jumbo v2, "messageId"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string/jumbo v1, "attachId"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string/jumbo v1, "position"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v1, Lcom/helpshift/cr;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/helpshift/cr;-><init>(Lcom/helpshift/bu;Lcom/helpshift/bv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/HashMap;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/helpshift/cr;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 343
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 364
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/helpshift/bu;->n:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 380
    :cond_c
    if-nez v3, :cond_0

    .line 381
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/helpshift/bu;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/helpshift/bu;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/helpshift/bu;->C:Z

    return p1
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/helpshift/m;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 286
    return-void
.end method

.method static synthetic b(Lcom/helpshift/bu;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/helpshift/bu;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/helpshift/bu;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lcom/helpshift/bu;->startActivity(Landroid/content/Intent;)V

    .line 105
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/helpshift/bu;)Lcom/helpshift/a/a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->f:Lcom/helpshift/a/a;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->u()Ljava/util/List;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    iget-object v2, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/helpshift/dx;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 167
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    invoke-virtual {v2}, Lcom/helpshift/dx;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 170
    const-string/jumbo v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/helpshift/bu;->g()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/bu;->C:Z

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    const-string/jumbo v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    invoke-direct {p0}, Lcom/helpshift/bu;->d()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "refresh status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/helpshift/bu;->C:Z

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->V()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    :cond_4
    invoke-direct {p0}, Lcom/helpshift/bu;->g()V

    goto :goto_0

    .line 182
    :cond_5
    invoke-direct {p0}, Lcom/helpshift/bu;->e()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 398
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/g/a;

    .line 400
    iget-object v0, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/helpshift/bu;->m:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method static synthetic d(Lcom/helpshift/bu;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lcom/helpshift/bu;->f:Lcom/helpshift/a/a;

    invoke-virtual {v0, v2}, Lcom/helpshift/a/a;->a(Z)V

    .line 192
    iget-object v0, p0, Lcom/helpshift/bu;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 194
    iget-boolean v1, p0, Lcom/helpshift/bu;->C:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/bu;->v:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/helpshift/bu;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/helpshift/bu;->v:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/helpshift/bu;->b(Landroid/view/View;)V

    .line 198
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/helpshift/bu;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v0, p0, Lcom/helpshift/bu;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/helpshift/bu;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 210
    :cond_1
    sget v0, Lcom/helpshift/k;->I:I

    invoke-direct {p0, v0}, Lcom/helpshift/bu;->d(I)V

    .line 211
    return-void

    .line 200
    :cond_2
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private d(I)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/helpshift/bu;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/bu;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 260
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/helpshift/bu;->H:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v0, p0, Lcom/helpshift/bu;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/bu;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 264
    :cond_0
    return-void
.end method

.method private e(I)I
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/helpshift/bu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 586
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic e(Lcom/helpshift/bu;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->q:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 214
    iput-boolean v1, p0, Lcom/helpshift/bu;->D:Z

    .line 215
    iget-object v0, p0, Lcom/helpshift/bu;->f:Lcom/helpshift/a/a;

    invoke-virtual {v0, v1}, Lcom/helpshift/a/a;->a(Z)V

    .line 216
    iget-object v0, p0, Lcom/helpshift/bu;->v:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/helpshift/bu;->b(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/helpshift/bu;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/helpshift/bu;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/helpshift/bu;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/al;->f(Ljava/lang/String;)Lcom/helpshift/bi;

    move-result-object v0

    .line 225
    sget-object v1, Lcom/helpshift/bi;->b:Lcom/helpshift/bi;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/helpshift/bi;->c:Lcom/helpshift/bi;

    if-ne v0, v1, :cond_2

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/helpshift/bu;->f()Lcom/helpshift/widget/CSATView;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/bu;->I:Lcom/helpshift/widget/CSATView;

    .line 227
    invoke-virtual {p0}, Lcom/helpshift/bu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpshift/bu;->a(Landroid/content/res/Configuration;)V

    .line 228
    sget v0, Lcom/helpshift/k;->I:I

    invoke-direct {p0, v0}, Lcom/helpshift/bu;->d(I)V

    .line 232
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/bu;->J:Z

    .line 233
    return-void

    .line 230
    :cond_2
    sget v0, Lcom/helpshift/k;->J:I

    invoke-direct {p0, v0}, Lcom/helpshift/bu;->d(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/helpshift/bu;)Lcom/helpshift/m;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    return-object v0
.end method

.method private f()Lcom/helpshift/widget/CSATView;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 236
    .line 238
    iget-object v0, p0, Lcom/helpshift/bu;->G:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/helpshift/bu;->G:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpshift/widget/CSATView;

    .line 240
    invoke-virtual {v0, p0}, Lcom/helpshift/widget/CSATView;->a(Lcom/helpshift/widget/b;)V

    .line 241
    iput-object v1, p0, Lcom/helpshift/bu;->G:Landroid/view/ViewStub;

    .line 242
    iget-object v1, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v2, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    sget-object v3, Lcom/helpshift/bi;->c:Lcom/helpshift/bi;

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/al;->a(Ljava/lang/String;Lcom/helpshift/bi;)Ljava/lang/Boolean;

    .line 245
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic g(Lcom/helpshift/bu;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->K:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 267
    iget-object v0, p0, Lcom/helpshift/bu;->f:Lcom/helpshift/a/a;

    invoke-virtual {v0, v2}, Lcom/helpshift/a/a;->a(Z)V

    .line 268
    iget-object v0, p0, Lcom/helpshift/bu;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/helpshift/bu;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/helpshift/bu;->y:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->Y()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 274
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/helpshift/bu;->d(I)V

    .line 275
    return-void
.end method

.method static synthetic h(Lcom/helpshift/bu;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->L:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/al;->e(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 290
    invoke-direct {p0, v0}, Lcom/helpshift/bu;->a(Lorg/json/JSONArray;)V

    .line 291
    return-void
.end method

.method static synthetic i(Lcom/helpshift/bu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/helpshift/bu;)Lcom/helpshift/al;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    return-object v0
.end method

.method static synthetic k(Lcom/helpshift/bu;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->v:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic l(Lcom/helpshift/bu;)Lcom/helpshift/dx;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    return-object v0
.end method

.method static synthetic m(Lcom/helpshift/bu;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/helpshift/bu;->g()V

    return-void
.end method

.method static synthetic n(Lcom/helpshift/bu;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic o(Lcom/helpshift/bu;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->M:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/helpshift/bu;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->N:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic q(Lcom/helpshift/bu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/helpshift/bu;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1081
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1085
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-thumbnail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1086
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    invoke-virtual {v4}, Lcom/helpshift/m;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1088
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1089
    iget-object v3, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    invoke-virtual {v3, v2}, Lcom/helpshift/al;->c(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1091
    :try_start_1
    iget-object v3, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lcom/helpshift/m;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 1094
    const/16 v2, 0x400

    :try_start_2
    new-array v2, v2, [B

    .line 1095
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 1096
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1101
    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_0

    .line 1102
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1103
    :cond_0
    if-eqz v2, :cond_1

    .line 1104
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0

    :cond_2
    move-object v1, v0

    .line 1101
    :cond_3
    if-eqz v0, :cond_4

    .line 1102
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1103
    :cond_4
    if-eqz v1, :cond_5

    .line 1104
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    return-object v4

    .line 1101
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 250
    sget v0, Lcom/helpshift/k;->J:I

    invoke-direct {p0, v0}, Lcom/helpshift/bu;->d(I)V

    .line 251
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 969
    iget-object v0, p0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/g/a;

    .line 972
    :try_start_0
    iget-object v1, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    const-string/jumbo v2, "localRscMessage_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    iget-object v2, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/helpshift/dx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :goto_0
    iget-object v0, p0, Lcom/helpshift/bu;->f:Lcom/helpshift/a/a;

    invoke-virtual {v0}, Lcom/helpshift/a/a;->notifyDataSetChanged()V

    .line 984
    return-void

    .line 976
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v2, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/helpshift/al;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/helpshift/g/a;->h:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 979
    :catch_0
    move-exception v0

    .line 980
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "remove screenshot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 255
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/al;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 256
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1189
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v0, p1}, Lcom/helpshift/dx;->t(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1190
    if-nez v0, :cond_0

    .line 1226
    :goto_0
    return-void

    .line 1194
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/helpshift/e/aa;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 1197
    const-string/jumbo v2, "state"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1199
    iget-object v2, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v3, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/helpshift/al;->e(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1200
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1201
    invoke-direct {p0, v2}, Lcom/helpshift/bu;->a(Lorg/json/JSONArray;)V

    .line 1203
    iget-object v2, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v2, v2, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v2, v1}, Lcom/helpshift/dx;->d(Lorg/json/JSONObject;)V

    .line 1205
    new-instance v1, Lcom/helpshift/ch;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/ch;-><init>(Lcom/helpshift/bu;Ljava/lang/String;)V

    .line 1217
    const-string/jumbo v2, "issue_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "body"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "refers"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "state"

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    move-object v0, p0

    move-object v2, v1

    invoke-direct/range {v0 .. v7}, Lcom/helpshift/bu;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "retryMessage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 867
    iget-object v0, p0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/g/a;

    .line 868
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->i:Ljava/lang/Boolean;

    .line 869
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->k:Ljava/lang/Boolean;

    .line 871
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/helpshift/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :goto_0
    iget-object v0, p0, Lcom/helpshift/bu;->f:Lcom/helpshift/a/a;

    invoke-virtual {v0}, Lcom/helpshift/a/a;->notifyDataSetChanged()V

    .line 878
    new-instance v1, Lcom/helpshift/cc;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/cc;-><init>(Lcom/helpshift/bu;I)V

    .line 909
    new-instance v2, Lcom/helpshift/cd;

    invoke-direct {v2, p0, p2}, Lcom/helpshift/cd;-><init>(Lcom/helpshift/bu;I)V

    .line 927
    iget-object v3, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "ar"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/bu;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    return-void

    .line 872
    :catch_0
    move-exception v0

    .line 873
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;I)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 798
    iget-object v0, p0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/g/a;

    .line 799
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->i:Ljava/lang/Boolean;

    .line 800
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/g/a;->k:Ljava/lang/Boolean;

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/helpshift/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :goto_0
    iget-object v0, p0, Lcom/helpshift/bu;->f:Lcom/helpshift/a/a;

    invoke-virtual {v0}, Lcom/helpshift/a/a;->notifyDataSetChanged()V

    .line 809
    new-instance v1, Lcom/helpshift/ca;

    invoke-direct {v1, p0, p3}, Lcom/helpshift/ca;-><init>(Lcom/helpshift/bu;I)V

    .line 826
    new-instance v2, Lcom/helpshift/cb;

    invoke-direct {v2, p0, p3}, Lcom/helpshift/cb;-><init>(Lcom/helpshift/bu;I)V

    .line 845
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v3, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "ca"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/bu;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :goto_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 855
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 856
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 857
    const-string/jumbo v1, "y"

    invoke-static {v1, v0}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 864
    :goto_2
    return-void

    .line 803
    :catch_0
    move-exception v0

    .line 804
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 849
    :cond_0
    iget-object v3, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "ncr"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/bu;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 859
    :cond_1
    :try_start_2
    const-string/jumbo v1, "n"

    invoke-static {v1, v0}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 861
    :catch_1
    move-exception v0

    .line 862
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public b()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/helpshift/bu;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/helpshift/bu;->q:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/bu;->p:Ljava/lang/Thread;

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->t()Ljava/lang/String;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->v()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    :goto_0
    return-void

    .line 441
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/helpshift/cm;

    invoke-direct {v1, p0}, Lcom/helpshift/cm;-><init>(Lcom/helpshift/bu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/helpshift/bu;->p:Ljava/lang/Thread;

    .line 471
    iget-object v0, p0, Lcom/helpshift/bu;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 987
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->b(Ljava/lang/Boolean;)V

    .line 988
    iput-boolean v2, p0, Lcom/helpshift/bu;->u:Z

    .line 989
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 991
    invoke-virtual {p0, v0, p1}, Lcom/helpshift/bu;->startActivityForResult(Landroid/content/Intent;I)V

    .line 992
    return-void
.end method

.method public c(I)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 995
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v3

    .line 996
    iget-object v0, p0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/helpshift/g/a;

    .line 997
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v8, Lcom/helpshift/g/a;->i:Ljava/lang/Boolean;

    .line 998
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v8, Lcom/helpshift/g/a;->k:Ljava/lang/Boolean;

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v1, v8, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/helpshift/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :goto_0
    iget-object v0, p0, Lcom/helpshift/bu;->f:Lcom/helpshift/a/a;

    invoke-virtual {v0}, Lcom/helpshift/a/a;->notifyDataSetChanged()V

    .line 1007
    new-instance v1, Lcom/helpshift/ce;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/ce;-><init>(Lcom/helpshift/bu;I)V

    .line 1055
    new-instance v2, Lcom/helpshift/cf;

    invoke-direct {v2, p0, p1}, Lcom/helpshift/cf;-><init>(Lcom/helpshift/bu;I)V

    .line 1074
    iget-object v0, p0, Lcom/helpshift/bu;->j:Lcom/helpshift/ai;

    iget-object v4, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    const-string/jumbo v5, ""

    const-string/jumbo v6, "sc"

    iget-object v7, v8, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v8, v8, Lcom/helpshift/g/a;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/helpshift/ai;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    return-void

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/16 v4, 0x7fbc

    .line 934
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 936
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 937
    if-eq p1, v4, :cond_1

    .line 938
    invoke-virtual {p0}, Lcom/helpshift/bu;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/helpshift/e/b;->a(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 940
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    const-class v3, Lcom/helpshift/ScreenshotPreviewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 941
    const-string/jumbo v2, "SCREENSHOT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    const-string/jumbo v0, "screenshot_position"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 943
    invoke-virtual {p0, v1, v4}, Lcom/helpshift/bu;->startActivityForResult(Landroid/content/Intent;I)V

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "SCREENSHOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 947
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "screenshot_position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 948
    const/4 v1, 0x0

    .line 950
    if-nez v0, :cond_2

    .line 951
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    iget-object v3, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/helpshift/e/b;->a(Lcom/helpshift/dx;Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/g/a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 952
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    .line 958
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v3, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Lcom/helpshift/al;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 962
    :goto_2
    iget-object v1, p0, Lcom/helpshift/bu;->f:Lcom/helpshift/a/a;

    invoke-virtual {v1}, Lcom/helpshift/a/a;->notifyDataSetChanged()V

    .line 963
    iget-object v1, p0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/helpshift/bu;->c(I)V

    goto :goto_0

    .line 954
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/g/a;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 955
    :try_start_4
    iput-object v2, v0, Lcom/helpshift/g/a;->h:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 959
    :catch_0
    move-exception v1

    .line 960
    :goto_3
    const-string/jumbo v2, "HelpShiftDebug"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 959
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 553
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 554
    invoke-direct {p0, p1}, Lcom/helpshift/bu;->a(Landroid/content/res/Configuration;)V

    .line 555
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1110
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "Copy"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1112
    check-cast p2, Landroid/widget/TextView;

    .line 1113
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v0, v2, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v0, v2}, Lcom/helpshift/m;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1117
    const-string/jumbo v2, "Copy Text"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 1118
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1123
    :goto_0
    return-void

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v0, v2}, Lcom/helpshift/m;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1121
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1127
    sget v0, Lcom/helpshift/i;->d:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1128
    sget v0, Lcom/helpshift/g;->e:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    .line 1129
    iget-object v0, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    iget-object v1, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 1131
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->Y()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/bu;->y:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/bu;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1142
    :goto_0
    return-void

    .line 1136
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 1137
    sget v0, Lcom/helpshift/g;->e:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 1139
    :cond_1
    iget-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/helpshift/bu;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/helpshift/m;

    iput-object v0, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    .line 529
    iget-object v0, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    invoke-virtual {v0, v2}, Lcom/helpshift/m;->c(Z)V

    .line 530
    invoke-virtual {p0}, Lcom/helpshift/bu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/bu;->d:Landroid/os/Bundle;

    .line 531
    iget-object v0, p0, Lcom/helpshift/bu;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 533
    new-instance v0, Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    invoke-direct {v0, v1}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    .line 534
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iput-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    .line 535
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    iput-object v0, p0, Lcom/helpshift/bu;->j:Lcom/helpshift/ai;

    .line 537
    iget-object v0, p0, Lcom/helpshift/bu;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "newIssue"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/bu;->r:Ljava/lang/Boolean;

    .line 538
    iget-object v0, p0, Lcom/helpshift/bu;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/bu;->s:Ljava/lang/Boolean;

    .line 539
    iget-object v0, p0, Lcom/helpshift/bu;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "chatLaunchSource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/bu;->l:Ljava/lang/String;

    .line 540
    iget-object v0, p0, Lcom/helpshift/bu;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "showConvOnReportIssue"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/bu;->t:Ljava/lang/Boolean;

    .line 542
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/helpshift/bu;->setHasOptionsMenu(Z)V

    .line 544
    sget v0, Lcom/helpshift/h;->z:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/bu;->H:Landroid/widget/TextView;

    .line 545
    iget-object v0, p0, Lcom/helpshift/bu;->H:Landroid/widget/TextView;

    const v1, 0x3f333333    # 0.7f

    invoke-static {v0, v1}, Lcom/helpshift/e/t;->a(Landroid/widget/TextView;F)V

    .line 547
    sget v0, Lcom/helpshift/h;->g:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 762
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 763
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/helpshift/bu;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 770
    :goto_0
    return v0

    .line 766
    :cond_0
    sget v2, Lcom/helpshift/g;->e:I

    if-ne v1, v2, :cond_1

    .line 767
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/helpshift/bu;->b(I)V

    goto :goto_0

    .line 770
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 409
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 410
    iget-object v0, p0, Lcom/helpshift/bu;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/helpshift/bu;->q:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 414
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    iget-object v1, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->a(Ljava/lang/Boolean;)V

    .line 419
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->l(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->r()V

    .line 421
    iget-object v0, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    iget-object v1, p0, Lcom/helpshift/bu;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/helpshift/m;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 422
    iget-object v0, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    iget-object v1, p0, Lcom/helpshift/bu;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/helpshift/m;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 423
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    iget-object v1, p0, Lcom/helpshift/bu;->v:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->v(Ljava/lang/String;)V

    .line 424
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 1146
    sget v0, Lcom/helpshift/g;->e:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    .line 1147
    iget-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->Y()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1150
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 476
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 477
    iput-boolean v3, p0, Lcom/helpshift/bu;->u:Z

    .line 478
    invoke-virtual {p0}, Lcom/helpshift/bu;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 480
    iget-object v1, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 482
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 483
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    iget-object v2, p0, Lcom/helpshift/bu;->b:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .line 486
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 487
    const-string/jumbo v1, "com.helpshift.failedMessageRequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    iget-object v2, p0, Lcom/helpshift/bu;->a:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .line 490
    invoke-virtual {p0}, Lcom/helpshift/bu;->b()V

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    iget-object v1, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->a(Ljava/lang/Boolean;)V

    .line 499
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    iget-object v1, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->l(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/helpshift/bu;->k:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/bu;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/al;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->Q()Ljava/lang/String;

    move-result-object v0

    .line 505
    iget-boolean v1, p0, Lcom/helpshift/bu;->J:Z

    if-nez v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/helpshift/bu;->v:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :cond_0
    iget-boolean v1, p0, Lcom/helpshift/bu;->E:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iput-boolean v3, p0, Lcom/helpshift/bu;->C:Z

    .line 512
    :cond_1
    iput-boolean v3, p0, Lcom/helpshift/bu;->E:Z

    .line 514
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    .line 515
    iget-object v0, p0, Lcom/helpshift/bu;->y:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/helpshift/bu;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 517
    iget-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 522
    :cond_2
    :goto_1
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 519
    :cond_3
    iget-object v0, p0, Lcom/helpshift/bu;->F:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 776
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 777
    iget-boolean v0, p0, Lcom/helpshift/bu;->u:Z

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    invoke-static {v0}, Lcom/helpshift/ah;->a(Landroid/app/Activity;)V

    .line 780
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 781
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 782
    const-string/jumbo v1, "c"

    invoke-static {v1, v0}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 791
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 792
    iget-boolean v0, p0, Lcom/helpshift/bu;->u:Z

    if-nez v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    invoke-static {v0}, Lcom/helpshift/ah;->b(Landroid/app/Activity;)V

    .line 795
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 591
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 593
    sget v0, Lcom/helpshift/g;->o:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/helpshift/bu;->h:Landroid/widget/ListView;

    .line 594
    sget v0, Lcom/helpshift/g;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/helpshift/bu;->v:Landroid/widget/EditText;

    .line 595
    sget v0, Lcom/helpshift/g;->q:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 596
    sget v1, Lcom/helpshift/g;->r:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/helpshift/bu;->w:Landroid/widget/LinearLayout;

    .line 597
    sget v1, Lcom/helpshift/g;->s:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/helpshift/bu;->x:Landroid/widget/LinearLayout;

    .line 598
    sget v1, Lcom/helpshift/g;->t:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/helpshift/bu;->y:Landroid/widget/RelativeLayout;

    .line 599
    const v1, 0x1020019

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/helpshift/bu;->z:Landroid/widget/ImageButton;

    .line 600
    const v1, 0x102001a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/helpshift/bu;->A:Landroid/widget/ImageButton;

    .line 601
    sget v1, Lcom/helpshift/g;->u:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/helpshift/bu;->B:Landroid/widget/Button;

    .line 602
    invoke-virtual {p0}, Lcom/helpshift/bu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/bu;->a(Landroid/content/res/Configuration;)V

    .line 603
    sget v1, Lcom/helpshift/g;->T:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/helpshift/bu;->G:Landroid/view/ViewStub;

    .line 605
    iget-object v1, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    iget-object v2, p0, Lcom/helpshift/bu;->B:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v1, v2}, Lcom/helpshift/e/ak;->c(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 607
    iget-object v1, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    iget-object v2, p0, Lcom/helpshift/bu;->z:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/e/ak;->f(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 608
    iget-object v1, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    iget-object v2, p0, Lcom/helpshift/bu;->A:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/e/ak;->g(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 610
    iget-object v1, p0, Lcom/helpshift/bu;->z:Landroid/widget/ImageButton;

    new-instance v2, Lcom/helpshift/cp;

    invoke-direct {v2, p0}, Lcom/helpshift/cp;-><init>(Lcom/helpshift/bu;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v1, p0, Lcom/helpshift/bu;->A:Landroid/widget/ImageButton;

    new-instance v2, Lcom/helpshift/cq;

    invoke-direct {v2, p0}, Lcom/helpshift/cq;-><init>(Lcom/helpshift/bu;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    iget-object v1, p0, Lcom/helpshift/bu;->B:Landroid/widget/Button;

    new-instance v2, Lcom/helpshift/bw;

    invoke-direct {v2, p0}, Lcom/helpshift/bw;-><init>(Lcom/helpshift/bu;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-object v1, p0, Lcom/helpshift/bu;->h:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 648
    new-instance v1, Lcom/helpshift/a/a;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/helpshift/bu;->g:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/helpshift/a/a;-><init>(Landroid/support/v4/app/Fragment;ILjava/util/List;)V

    iput-object v1, p0, Lcom/helpshift/bu;->f:Lcom/helpshift/a/a;

    .line 650
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 654
    iget-object v2, p0, Lcom/helpshift/bu;->h:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 655
    iget-object v2, p0, Lcom/helpshift/bu;->h:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/helpshift/bu;->f:Lcom/helpshift/a/a;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 656
    iget-object v2, p0, Lcom/helpshift/bu;->h:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 659
    :try_start_0
    iget-object v1, p0, Lcom/helpshift/bu;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "issueId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    .line 660
    invoke-direct {p0}, Lcom/helpshift/bu;->c()V

    .line 661
    invoke-direct {p0}, Lcom/helpshift/bu;->h()V

    .line 662
    iget-object v1, p0, Lcom/helpshift/bu;->h:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/helpshift/bu;->f:Lcom/helpshift/a/a;

    invoke-virtual {v2}, Lcom/helpshift/a/a;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 664
    iget-object v1, p0, Lcom/helpshift/bu;->i:Lcom/helpshift/dx;

    iget-object v2, p0, Lcom/helpshift/bu;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/helpshift/dx;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 666
    iget-object v1, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    invoke-virtual {v1}, Lcom/helpshift/m;->c()Lcom/helpshift/app/a;

    move-result-object v1

    .line 667
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/helpshift/app/a;->a(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_0
    iget-object v1, p0, Lcom/helpshift/bu;->v:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 673
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 674
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 675
    iget-object v1, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/e/ak;->d(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 682
    :goto_1
    new-instance v1, Lcom/helpshift/bx;

    invoke-direct {v1, p0}, Lcom/helpshift/bx;-><init>(Lcom/helpshift/bu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    iget-object v1, p0, Lcom/helpshift/bu;->v:Landroid/widget/EditText;

    new-instance v2, Lcom/helpshift/by;

    invoke-direct {v2, p0, v0}, Lcom/helpshift/by;-><init>(Lcom/helpshift/bu;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 714
    iget-object v1, p0, Lcom/helpshift/bu;->v:Landroid/widget/EditText;

    new-instance v2, Lcom/helpshift/bz;

    invoke-direct {v2, p0, v0}, Lcom/helpshift/bz;-><init>(Lcom/helpshift/bu;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 735
    return-void

    .line 668
    :catch_0
    move-exception v1

    .line 669
    const-string/jumbo v2, "HelpShiftDebug"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 678
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 679
    iget-object v1, p0, Lcom/helpshift/bu;->c:Lcom/helpshift/m;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/e/ak;->e(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
